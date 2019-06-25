//
//  AddPhotoViewController.swift
//  OliviaDViewfinder
//
//  Created by Olivia Dugger on 6/25/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }
    
    
    @IBAction func cameraTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)

    }
    
    @IBAction func libraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)

    }
    
    
        // Do any additional setup after loading the view.
     
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                imageView.image = selectedImage
            }
            imagePicker.dismiss(animated: true, completion: nil)

        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


//
//  AddPhotoViewController.swift
//  OliviaDViewfinder
//
//  Created by Olivia Dugger on 6/25/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//
