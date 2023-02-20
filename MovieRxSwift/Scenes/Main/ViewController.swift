//
//  ViewController.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Observable.just(1)
            .subscribe { number in
                print("--- debug ---- ", number)
            }
            .disposed(by: rx.disposeBag)
    }
}
