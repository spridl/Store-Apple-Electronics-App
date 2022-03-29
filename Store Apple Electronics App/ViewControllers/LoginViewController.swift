//
//  LoginViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var delegate: LoginViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // new text for test # 4
//        nameTextField.delegate = self // проверить
//        surnameTextField.delegate = self // проверить

    }
    
    @IBAction func loginButtonPressed() {
//        guard nameTextField.text == проверка на правильный ввод данных else {
//            showAlert(
//                title: "Invalid name",
//                message: "Please, enter correct name",
//                textField: nameTextField
//            )
//            return
//        }
//
//        guard surnameTextField.text == проверка на правильный ввод данных else {
//            showAlert(
//                title: "Invalid surname",
//                message: "Please, enter correct surname",
//                textField: surNnmeTextField
//            )
//            return
//        }
        delegate?.setPerson(for: nameTextField.text ?? "", and: surnameTextField.text ?? "")

        performSegue(withIdentifier: "loginSegue", sender: nil)
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            surnameTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}

    
   
