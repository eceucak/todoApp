//
//  DetayPresenter.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation
class yapilacakDetayPresenter : ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        yapilacakDetayInteractor?.isGuncelle(yapilacak_id: yapilacak_id,yapilacak_is: yapilacak_is)
    }
    
    
}
