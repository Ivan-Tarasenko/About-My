//
//  UIViewController+BorderRadiusImage.swift
//  My summary
//
//  Created by Иван Тарасенко on 05.12.2021.
//

import UIKit

extension UIViewController {
    func setingCornerRadius(radius: CGFloat, image: UIImageView)  {
        return image.layer.cornerRadius = radius

    }
}
