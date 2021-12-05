//
//  ViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.withGradientBackground(
            color1: UIColor(red: 133/255, green: 209/255, blue: 121/255, alpha: 1),
        color2: UIColor(red: 255/255, green: 223/255, blue: 138/255, alpha: 1)
        )
        
        navigationItem.title = "My Summary"
    }


}

extension UIView {

    func withGradientBackground(color1: UIColor,
                                color2: UIColor) {

        let layerGradient = CAGradientLayer()

        layerGradient.colors = [color1.cgColor,
                                color2.cgColor]
        layerGradient.frame = bounds
        layerGradient.startPoint = CGPoint(x: 0, y: 1.4)
        layerGradient.endPoint = CGPoint(x: 0.7, y: 0.1)
        layerGradient.locations = [0.0, 1.1]

        layer.insertSublayer(layerGradient, at: 0)
    }
}
