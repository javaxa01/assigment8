//
//  SigninViewController.swift
//  assigment8
//
//  Created by Saba Javakhishvili on 07.12.25.
//

import UIKit

class SigninViewController: UIViewController {
    @IBOutlet weak var Textlabel1: UILabel!
    @IBOutlet weak var Textlabel2: UILabel!
    @IBOutlet weak var Textlabel3: UILabel!
    @IBOutlet weak var Textlabel4: UILabel!
    @IBOutlet weak var Textlabel5: UILabel!
    
    var text: String?
    var text1: String?
    var text2: String?
    var text3: String?
    var text4: String?
    var length: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Textlabel1.text=text
        Textlabel2.text=text1
        Textlabel3.text=text2
        Textlabel4.text=text3
        Textlabel5.text=text4
    }

}

