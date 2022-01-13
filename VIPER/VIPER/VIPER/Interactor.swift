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
//  Capital-One Demo endpoint: https://api.nytimes.com/svc/mostpopular/v2/shared/1/facebook.json?api-key=%20MCKwfxg3mMkqmjdfdzCZYeG4GqcMGvZ3
//
//  Created by Frederick Lee on 1/12/22.
//

import Foundation
import UIKit

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    func getUsers()
}

class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?

    func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else { return }
            do {
                let entitites = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(entitites))
            } catch {
                self?.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
        }
        task.resume()
    }
}
