//
//  ViewController.swift
//  TestDemo1
//
//  Created by Vishal Jagtap on 22/03/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefaultsUsage()
    }
    
    func userDefaultsUsage(){
//        //storage of value in user defaults
//        var number = 10
//        UserDefaults.standard.set(number, forKey: "number")
//
//        var num1 = 34.23
//        UserDefaults.standard.set(num1,forKey: "num1")
//
//        let numbers = [12,4,56,23,98]
//        UserDefaults.standard.set(numbers, forKey: "numbers")
//
//        var dictionary : [Int : String] = [1 : "Pritam",
//                                            2 : "Tushar",
//                                            3 : "Deepali"]
//        UserDefaults.standard.set(dictionary, forKey: "dictionary")
//
//
//        //extraction of value from user defaults
//        let numberValue = UserDefaults.standard.value(forKey: "number")
//
//        let num1Value = UserDefaults.standard.value(forKey: "num") as? Float ?? 30.0
//
//        let getValueOfArray = UserDefaults.standard.value(forKey: "numbers")
//
//        let getDictionaryValues = UserDefaults.standard.value(forKey: "dictionary")
//        print(getDictionaryValues)
        let imageExtractedformUD = UserDefaults.standard.data(forKey: "savedImage")
        self.imageView.image = UIImage(data: imageExtractedformUD!)  //flow 2
        
    }
    
    @IBAction func pickUpImageFromPhotoLibrary(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(imagePickerController, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.imageView.image = image          //flow 1
        let compressedImage = image.jpegData(compressionQuality: 0.5)
        UserDefaults.standard.set(compressedImage, forKey: "savedImage")
        self.dismiss(animated: true)
    }
}
