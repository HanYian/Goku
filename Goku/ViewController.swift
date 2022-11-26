//
//  ViewController.swift
//  Goku
//
//  Created by HanYuan on 2022/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playGif()
    }
    
    func playGif()  {
        let animatedImage = UIImage.animatedImageNamed("Goku-", duration: 4)
        gifImageView.image = animatedImage
    }
    
    @IBAction func gifSlider(_ sender: Any) {
        let imageName = String(format: "Goku-%d", arguments: [Int(slider.value)])
        imageView.image = UIImage(named: imageName)
    }
}

