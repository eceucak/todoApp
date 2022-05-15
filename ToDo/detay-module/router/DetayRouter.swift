//
//  DetayRouter.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation

class yapilacakDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref: DetayVC) {
        ref.yapilacakDetayPresenterNesnesi = yapilacakDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = yapilacakDetayInteractor()
    }
}
