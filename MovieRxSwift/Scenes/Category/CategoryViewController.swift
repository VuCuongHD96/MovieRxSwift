//
//  CategoryViewController.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import UIKit
import MGArchitecture
import NSObject_Rx
import RxCocoa
import RxSwift
import Reusable
import Then

final class CategoryViewController: UIViewController {
    
    // MARK: - Outlet
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Define
    struct Constant {
        static let cellHeight: CGFloat = 213
    }
    
    // MARK: - Property
    var viewModel: CategoryViewModel!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Setup View
    private func setupView() {
        tableView.do {
            $0.register(cellType: CategoryTableViewCell.self)
            $0.showsVerticalScrollIndicator = false
            $0.delegate = self
            $0.backgroundColor = .clear
        }
        view.backgroundColor = UIColor(named: "backgroundColorScreen")
    }
}

extension CategoryViewController: Bindable {
    
    func bindViewModel() {
        let input = CategoryViewModel.Input(loadTrigger: Driver.just(Void()))
        let output = viewModel.transform(input, disposeBag: rx.disposeBag)
        output.categoryArray
            .drive(tableView.rx.items) { tableView, index, element in
                let indexPath = IndexPath(item: index, section: 0)
                let cell: CategoryTableViewCell = tableView.dequeueReusableCell(for: indexPath)
                cell.setupContent(data: "aaa")
                return cell
            }
            .disposed(by: rx.disposeBag)
    }
}

extension CategoryViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constant.cellHeight
    }
}
