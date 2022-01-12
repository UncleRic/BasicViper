//
//  Presenter.swift
//  VIPER
//
//  The Presenter is the glue that ties everything together.
//  Object
//  Protocol
//  Has reference to: Interactor, Router & View
//
//  Created by Frederick Lee on 1/12/22.
//

import Foundation

enum FetchError: Error {
    case failed
}

protocol AnyPresenter {
    var router: AnyRouter? {get set}
    var interactor: AnyInteractor? {get set}
    var view: AnyView? {get set}
    
    func interactorDidFetchUsers(with result:Result<[User], Error>)
    
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    var interactor: AnyInteractor?
    var view: AnyView?
    
    func interactorDidFetchUsers(with result:Result<[User], Error>) {
        
    }
    
}
 
