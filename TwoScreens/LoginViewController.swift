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
    
    private let user = "qwe"
    private let password = "qwe"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.welcomText = userNameTextField.text
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(title: "ERROR", message: "Please enter a valid username or password")
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Username is", message: user)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Password is", message: password)
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
