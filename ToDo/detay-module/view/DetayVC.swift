//
//  DetayVC.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var TFyapilacakIs: UITextField!
    
    @IBOutlet weak var updateTasks: UILabel!
    var yapilacakIs:Yapilacaklar?
        
        var yapilacakDetayPresenterNesnesi: ViewToPresenterYapilacakDetayProtocol?

        override func viewDidLoad() {
            super.viewDidLoad()

            if let y = yapilacakIs {
                TFyapilacakIs.text = y.yapilacak_is
                updateTasks.font = UIFont(name:"PoiretOne-Regular",size:30)
                
            }
            
            yapilacakDetayRouter.createModule(ref: self)
        }
        
        @IBAction func buttonGuncelle(_ sender: Any) {
            if let yi = TFyapilacakIs.text, let y = yapilacakIs {
                yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
            }
        }
    

}
