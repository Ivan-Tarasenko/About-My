//
//  Gradient.swift
//  My summary
//
//  Created by Иван Тарасенко on 20.05.2021.
//

import UIKit

extension UIView {

    func gradientBackground(color1: UIColor,
                            color2: UIColor,
                            startPoint: CGPoint,
                            endPoint: CGPoint,
                            locations: [NSNumber],
                            inView: UIView
    ) {
        let layerGradient = CAGradientLayer()

        layerGradient.colors = [color1.cgColor, color2.cgColor]
        layerGradient.frame = inView.bounds
        layerGradient.startPoint = startPoint
        layerGradient.endPoint = endPoint
        layerGradient.locations = locations
        layer.insertSublayer(layerGradient, at: 0)
    }
}
