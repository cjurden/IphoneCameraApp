//
//  ViewController.swift
//  CameraAppRevision
//
//  Created by Nicholas Jurden on 2/16/16.
//  Copyright © 2016 Nicholas Jurden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var imageView: UIImageView?
    
    
    @IBAction func takePhoto(sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func selectPhoto(sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    //THIS NEEDS TO BE MODIFIED FOR SWIFT...
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary) {
        
        let chosenImage = editingInfo[UIImagePickerControllerEditedImage]
        self.imageView!.image = chosenImage
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    //SO DOES THIS...
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if !UIImagePickerController.isCameraDeviceAvailable(){
            let alert = UIAlertController(title: "Error", message: "Device has no camera", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(defaultAction)
            
            presentViewController(alert, animated: true, completion: nil)
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

