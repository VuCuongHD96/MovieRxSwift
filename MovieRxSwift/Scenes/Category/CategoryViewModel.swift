//
//  CategoryViewModel.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import RxSwift
import RxCocoa
import MGArchitecture

struct CategoryViewModel: ViewModel {
    
    struct Input {
        var loadTrigger: Driver<Void>
    }
    
    struct Output {
        var categoryArray: Driver<[String]>
    }

    func transform(_ input: Input, disposeBag: RxSwift.DisposeBag) -> Output {
        let categoryArray = input.loadTrigger
            .map { _ in
                return ["1", "2", "3"]
            }
        return Output(categoryArray: categoryArray)
    }
}
