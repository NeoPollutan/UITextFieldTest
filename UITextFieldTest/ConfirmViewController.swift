//
//  ConfirmViewController.swift
//  UITextFieldTest
//
//  Created by Rizky Adipratama Ruddyar on 16/05/19.
//  Copyright © 2019 Rizky Adipratama Ruddyar. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    
    var FullName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NameLabel.text = FullName
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
