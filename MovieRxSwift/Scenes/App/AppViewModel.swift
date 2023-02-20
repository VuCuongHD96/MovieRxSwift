//
//  AppViewModel.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import RxSwift
import RxCocoa

struct AppViewModel {
    let navigator: AppNavigatorType
}

extension AppViewModel {
    
    struct Input {
        let loadTrigger: Driver<Void>
    }
        
    struct Output {
        let toMain: Driver<Void>
    }
    
    func transform(_ input: Input) -> Output {
        
        let toMain = input.loadTrigger
            .do { _ in
                navigator.toMain()
            }
        
        return Output(toMain: toMain)
    }
}
