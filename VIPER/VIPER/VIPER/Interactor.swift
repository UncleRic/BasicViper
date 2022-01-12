//
//  Interactor.swift
//  VIPER
//
//  This is an Object.
//  Requires a Protocol.
//  Reference to a presenter.
//  Purpose to get/post data to either database or network
//
//  Demo API endpoint: https://jsonplaceholder.typicode.com/users
//  Created by Frederick Lee on 1/12/22.
//

import Foundation

protocol AnyInteractor {
    var presenter: AnyPresenter? {get set}
    func getUsers()
}

class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
         
    }
    
}
