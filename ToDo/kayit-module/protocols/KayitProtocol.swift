//
//  KayitProtocol.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakKayitProtocol {
    var yapilacakKayitInteractor:PresenterToInteractorYapilacakKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakKayitProtocol {
    func isEkle(yapilacak_is:String)
}

protocol PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref:KayitVC)
}
