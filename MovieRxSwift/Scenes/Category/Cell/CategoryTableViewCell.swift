//
//  CategoryTableViewCell.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import UIKit
import Reusable

final class CategoryTableViewCell: UITableViewCell, NibReusable {

    // MARK: - Outlet
    @IBOutlet private weak var categoryName: UILabel!
    @IBOutlet private weak var categoryImageView: UIImageView!

    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    // MARK: - Setup View
    private func setupView() {
        selectionStyle = .none
        backgroundColor = .clear
    }
    
    // MARK: - Data
    func setupContent(data: String) {
        categoryName.text = data
        categoryImageView.image = UIImage(named: "War")
    }
}
