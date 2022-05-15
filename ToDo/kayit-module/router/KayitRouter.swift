//
//  KayitRouter.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation

class yapilacakKayitRouter : PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref: KayitVC) {
        ref.yapilacakKayitPresenterNesnesi = yapilacakKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = yapilacakKayitInteractor()
    }
}
