//
//  CustomTextField.swift
//  UIDemo
//
//  Created by Mahmoud Fares on 02/10/2021.
//

import UIKit


protocol TextFieldDelegate: AnyObject {
    func getString(textfield: CustomTextField ,text: String)
}

class CustomTextField: UIView {
    
    // MARK: Out Lets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var errorView: UIView!
    @IBOutlet private weak var textField: UITextField!
    
    // MARK: Variables
    
    /// to get value string from TextField
    weak var delegateText: TextFieldDelegate?
    
    // MARK: Inputs
    /// add Title View
    var titleString: String = "Title Label" {
        didSet {
            titleLabel.text = titleString
        }
    }
    
    var placeHolder: String = "" {
        didSet {
            textField.placeholder = placeHolder
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    func setupUI() {
        self.fromNib(type: Self.self)
        textField.delegate = self
    }
    
    
    
    
}


// MARK: UITextField Delate
// Output
extension CustomTextField: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else { return }
        delegateText?.getString(textfield: self,text: text)
    }
}
