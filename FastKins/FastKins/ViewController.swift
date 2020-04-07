//
//  ViewController.swift
//  FastKins
//
//  Created by Nithin Kumar on 4/3/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //1
        //2
        //3
        //4
        //5
    }
    @IBAction func clickEmail(_ sender: Any) {
        if let emailField = textField.text {
            let isValid = isValidEmail(email: emailField)
                print(isValid)
        }
      
    }
    func isValidEmail(email : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }


}

