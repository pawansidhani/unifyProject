//
//  MainViewController.swift
//  BurstImage
//
//  Created by Pawan Sidhani on 05/11/16.
//  Copyright © 2016 Pawan Sidhani. All rights reserved.
//

import UIKit


class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var displayError: UITextField!
    @IBOutlet weak var pickedImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func burstTouchButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera )
        {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
        for var i in 0..<10
        {
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
                let imageData = UIImageJPEGRepresentation(self.pickedImage.image!, 0.6)
                let keychain = KeychainSwift()
                keychain.set(imageData!, forKey: "Image \(i)")
            }
            i += 1
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let tempImage:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        pickedImage.image  = tempImage
    }


    @IBAction func previewTouch(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
