//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ivan Svit on 9/15/19.
//  Copyright © 2019 Ivan Svit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoimageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user inout through delegate callbacks.
        nameTextField.delegate = self
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        nameTextField.resignFirstResponder()
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    // UIImagePickerControler is a view controller that lets a user pick media from their photo library.
    let imagePickerController = UIImagePickerController()
    
    // Only allow photos to be picked, not taken.
    imagePickerController.sourceType = .photoLibrary
    
}

