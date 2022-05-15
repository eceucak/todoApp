//
//  KayitPresenter.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import Foundation

class yapilacakKayitPresenter : ViewToPresenterYapilacakKayitProtocol {
    var yapilacakKayitInteractor: PresenterToInteractorYapilacakKayitProtocol?
    func ekle(yapilacak_is: String) {
        yapilacakKayitInteractor?.isEkle(yapilacak_is: yapilacak_is)
    }
    
    
    
}
