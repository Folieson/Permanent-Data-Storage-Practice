//
//  ViewController.swift
//  Permanent Data Storage Practice
//
//  Created by Андрей Понамарчук on 08.08.2018.
//  Copyright © 2018 Андрей Понамарчук. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBAction func saveNumberButton(_ sender: UIButton) {
        UserDefaults.standard.set(phoneNumberTextField.text, forKey: "phoneNumber")
        print("Номер сохранен")
        viewDidLoad()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneNumberObject = UserDefaults.standard.object(forKey: "phoneNumber")
        if let phoneNumber = phoneNumberObject as? String {
            phoneNumberLabel.text = phoneNumber
            print("Номер выведен")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

