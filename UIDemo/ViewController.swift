//
//  ViewController.swift
//  UIDemo
//
//  Created by Mahmoud Fares on 02/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var gratingLabel: UILabel!
    @IBOutlet weak var customTextField: CustomTextField!
    @IBOutlet weak var passwordTexrField: CustomTextField!
    @IBOutlet var actionButton: ActionButton!
    
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI() {
        
        self.view.backgroundColor = .customColor(.backgroundColor)
        welcomeLabel.font = .customFont(.title2)
        gratingLabel.font = .customFont(.subheadline)
       _ = [gratingLabel, welcomeLabel].map { label in
            label?.adjustsFontForContentSizeCategory = true
        }
        actionButton.handleStyleButton(.enable)
        welcomeLabel.text = L10n.grateeningLabel
        actionButton.setTitle(L10n.actionButton, for: .normal)
        image.image = Asset.Images.screenShotArabic.image
        emailTextField.delegateText = self
        passwordTexrField.delegateText = self
    }

    @IBAction func buttonTouchedInside(_ sender: Any) {
        actionButton.handleStyleButton(.disable)
    }

    
    
}
extension ViewController: TextFieldDelegate {
    func getString(textfield: CustomTextField,text: String) {
        if textfield == emailTextField {
            debugPrint(text)
        }else if textfield == passwordTexrField{
            debugPrint(text)
        }
        
    }
    
    
}
