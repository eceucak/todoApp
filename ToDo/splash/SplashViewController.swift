//
//  SplashViewController.swift
//  ToDo
//
//  Created by Ece Ucak on 13.05.2022.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var doLabel: UILabel!
    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let todoGif = UIImage.gifImageWithName("todo")
        imageView.image = todoGif

        toLabel.font = UIFont(name:"PoiretOne-Regular",size:100)
        doLabel.font = UIFont(name:"PoiretOne-Regular",size:100)
     
        let timer = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)

    }
    @objc func timeToMoveOn() {
            self.performSegue(withIdentifier: "toHome", sender: self)
        }
}

