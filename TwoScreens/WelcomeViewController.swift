//
//  WelcomeViewController.swift
//  TwoScreens
//
//  Created by Алексей Зарудный on 08.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextField: UITextField!
    
    var welcomText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextField.text = "Welcome, " + welcomText + " !"
    }
}
