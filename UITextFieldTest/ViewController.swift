//
//  ViewController.swift
//  UITextFieldTest
//
//  Created by Rizky Adipratama Ruddyar on 16/05/19.
//  Copyright © 2019 Rizky Adipratama Ruddyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    @IBOutlet weak var FullnameTextField: UITextField!
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    @IBAction func RegisterPressed(_ sender: Any) {
        if FullnameTextField.text == "" || PhoneTextField.text == ""
        {
            let alert = UIAlertController(title: "Error Bosque", message: "Isi semua la", preferredStyle: .alert)
            let action = UIAlertAction(title: "O", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
        present (alert, animated: true, completion: nil)
        }
        else
        {
            performSegue(withIdentifier: "MoveRegister", sender: self)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ConfirmViewController
        {
            destination.FullName = FullnameTextField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        FullnameTextField.delegate = self
        PhoneTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == FullnameTextField
        {
PhoneTextField.becomeFirstResponder()
        }
        else if textField == PhoneTextField
        {
            textField.resignFirstResponder()
        }
        return true
    }
}

