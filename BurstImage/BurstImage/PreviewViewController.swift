//
//  PreviewViewController.swift
//  BurstImage
//
//  Created by Pawan Sidhani on 05/11/16.
//  Copyright © 2016 Pawan Sidhani. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {

    @IBOutlet weak var displayError: UITextField!
    @IBOutlet weak var loadedImage: UIImageView!
    var imageNumber:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keychain = KeychainSwift()
        if !(keychain.get("Image\(imageNumber)") == nil)
        {
            loadedImage.image = keychain.get("Image\(imageNumber)") as! UIImage
            loadedImage.isHidden = true
            displayError.isHidden = false
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextImage(_ sender: UIButton) {
        imageNumber += 1
        self.viewDidLoad()
    }

    @IBAction func previousImage(_ sender: AnyObject) {
        imageNumber -= 1
        self.viewDidLoad()
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
