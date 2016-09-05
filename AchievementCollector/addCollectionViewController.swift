//
//  addCollectionViewController.swift
//  AchievementCollector
//
//  Created by John Montejano on 9/5/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class addCollectionViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
        imagePicker.delegate = self
        
        

        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButton(_ sender: AnyObject) {
    }

    @IBAction func photoLIbraryPicker(_ sender: AnyObject) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
      let image =   info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func takePhoto(_ sender: AnyObject) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
}
