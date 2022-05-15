//
//  DetayProtocol.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol {
    func isGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:DetayVC)
}
