//
//  SecondViewController.swift
//  IAmRich
//
//  Created by Alumne on 30/10/2020.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondImageView: UIImageView!
    var callbackImage: (_ imageValue: String?) -> Void = { _ in}
    var currentImage: String?
    var images = ["image1","image2","image3","image4","image5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondImageView.image = UIImage(named: currentImage!)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func imageClick(_ sender: Any) {
        let id = Int.random(in: 0..<images.count - 1)
        currentImage = images[id]
        secondImageView.image = UIImage(named: images[id])
    }

    
    @IBAction func goBack(_ sender: Any) {
        callbackImage(currentImage)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
