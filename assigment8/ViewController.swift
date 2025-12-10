//
//  ViewController.swift
//  assigment8
//
//  Created by Saba Javakhishvili on 07.12.25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Textfiel1: UITextField!
    
    @IBOutlet weak var Textfiel2: UITextField!
    
    @IBOutlet weak var Textfiel3: UITextField!
    
    @IBOutlet weak var Textfiel4: UITextField!
    
    
    @IBOutlet weak var Textfiel5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Textfiel4.isSecureTextEntry = true
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
        if identifier == "Signsegue"{
            let vc = segue.destination as! SigninViewController
            vc.text = Textfiel1.text
            vc.text1 = Textfiel2.text
            vc.text2 = Textfiel3.text
            vc.text3 = Textfiel4.text
            vc.text4 = Textfiel5.text
        }
    }
    @IBAction func IfNotFullShowAllert(_ sender: UIButton) {
        guard let name = Textfiel1.text, !name.isEmpty,
              let lastname = Textfiel2.text, !lastname.isEmpty,
              let email = Textfiel3.text, !email.isEmpty,
              let password = Textfiel4.text, !password.isEmpty,
              let phone = Textfiel5.text,!phone.isEmpty else{
            let alert = UIAlertController(title: "Error", message: "Please fill all the fields", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                self.dismiss(animated: true, completion: nil)
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                self.dismiss(animated: true, completion: nil)
            }))
            
            present(alert, animated: true, completion: nil)
            return
        }
    }
    @IBAction func MoveToNextSegue(_ sender: UIButton) {
        performSegue(withIdentifier:"Signsegue", sender: nil)
        }
}
