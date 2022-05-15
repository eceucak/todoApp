//
//  ToDotableViewCell.swift
//  ToDo
//
//  Created by Ece Ucak on 12.05.2022.
//

import UIKit

protocol HucreProtocol {
    func check(indexPath:IndexPath)
    
}
class ToDotableViewCell: UITableViewCell {

    @IBOutlet weak var yapilacakIsListesi: UILabel!
    @IBOutlet weak var durumView: UIView!
    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var checkButton: UIButton!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func doneButtonAction(_ sender: Any) {
        hucreProtocol?.check(indexPath: indexPath!)
        durumView.layer.borderColor = UIColor(rgb: 0x5DC5C0).cgColor
//        let attributeString =  NSMutableAttributedString(string: "\(yapilacakIsListesi!)")
//            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
//                                                 value: NSUnderlineStyle.single.rawValue,
//                                                     range: NSMakeRange(0, attributeString.length))
//            yapilacakIsListesi.attributedText = attributeString
        
    }
}

