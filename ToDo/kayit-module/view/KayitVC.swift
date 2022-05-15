//
//  KayitVC.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import UIKit

class KayitVC: UIViewController {

      
    @IBOutlet weak var yapilacakIsTF: UITextField!
    @IBOutlet weak var addTasks: UILabel!
    
        var yapilacakKayitPresenterNesnesi:ViewToPresenterYapilacakKayitProtocol?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            yapilacakKayitRouter.createModule(ref: self)
            addTasks.font = UIFont(name:"PoiretOne-Regular",size:30)
        }
        
        @IBAction func buttonKaydet(_ sender: Any) {
            if let yi = yapilacakIsTF.text {
                yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yi)
            }
        }
    }
