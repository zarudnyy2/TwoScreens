//
//  ViewController.swift
//  TwoScreens
//
//  Created by Алексей Зарудный on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "user"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.welcomText = userNameTextField.text
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
    }
    @IBAction func forgotUserNameButton() {
    }
    @IBAction func forgotPasswordButton() {
        
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        }
}

