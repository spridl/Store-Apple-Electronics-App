//
//  LoginViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Properties
    
    var person: Person!

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        guard let name = nameTextField.text, let surname = surnameTextField.text else { return }
        
        let person = Person(name: name, surname: surname)
        
        viewControllers.forEach {
            if let profileVC = $0 as? ProfileViewController {
                profileVC.fullName = person.fullName
            } else { return }
        }
    }

    // MARK: - IBActions
    @IBAction func loginButtonPressed() {
        guard nameTextField.text != nil && nameTextField.text != "" else {
            showAlert(
                title: "Invalid name",
                message: "Please, enter correct name",
                textField: nameTextField
            )
            return
        }
       
        guard surnameTextField.text != nil && surnameTextField.text != "" else {
            showAlert(
                title: "Invalid surname",
                message: "Please, enter correct surname",
                textField: surnameTextField
            )
            return
        }
        
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        surnameTextField.text = ""
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String,
                           message: String,
                           textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
            textField?.becomeFirstResponder()
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
    
    func textField(_ TextField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String)
    -> Bool {
        let lettersCharacter = CharacterSet.letters
        let characterSet = CharacterSet(charactersIn: string)
        return lettersCharacter.isSuperset(of: characterSet)
    }
}
