//
//  ViewController.swift
//  IAmRich
//
//  Created by Alumne on 30/10/2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoButton: UIButton!
    var currentImage = "image1"
    var images = ["image1","image2","image3","image4","image5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageClick(_ sender: Any) {
        let id = Int.random(in: 0..<images.count - 1)
        currentImage = images[id]
        imageView.image = UIImage(named: images[id])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoTransition" {
            let vc = segue.destination as! SecondViewController
            vc.currentImage = currentImage
            
            vc.callbackImage = {currentImage in self.imageView.image = UIImage(named: currentImage!)
                
            }
            
            
        }
    }
    



}

