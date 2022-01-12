//
//  Router.swift
//  VIPER
//
//  A router can route within its own module.
//  Object
//  Doesn't have a reference to anything else.
//  *** Entry point to module ***  This is where the VIPER architecture starts.
//
//
//  Created by Frederick Lee on 1/12/22.
//

import Foundation
import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?
    static func start() -> AnyRouter {
        let router = UserRouter()

        // Assign VIP
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()

        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor

        router.entry = view as? EntryPoint

        return router
    }
}
