//
//  ViewControllerSeller.swift
//  Project
//
//  Created by Niccolo Diana on 13/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import UIKit

class ViewControllerSeller: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageToBeDisplayed: UIImageView!
    let picker = UIImagePickerController()
    
    @IBAction func buttonPickerPressed(_ sender: UIButton) {
        picker.delegate = self
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        imageToBeDisplayed.image = selectedImage
        
        picker.dismiss(animated:true,completion:nil)
    }
    
}
