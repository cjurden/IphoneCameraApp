//
//  ViewController.swift
//  CameraAppRevision
//
//  Created by Nicholas Jurden on 2/16/16.
//  Copyright © 2016 Nicholas Jurden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()
    
    
    @IBOutlet var imageView: UIImageView?
    
    
    @IBAction func takePhoto(sender: UIButton) {
        
    }
    
    @IBAction func selectPhoto(sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker.delegate = self
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

