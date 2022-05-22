//
//  FamilyViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class FamilyViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    
    private let colorOne = UIColor(
        red: 167/255,
        green: 119/255,
        blue: 244/255,
        alpha: 1
    )
    private let colorTwo = UIColor(
        red: 253/255,
        green: 207/255,
        blue: 83/255,
        alpha: 1
    )
    
    private var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
            gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        }
    }

    override func viewDidLayoutSubviews() {
        gradientLayer.frame = view.frame
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
        setingCornerRadius(radius: 30, image: imageOne)
        setingCornerRadius(radius: 30, image: imageTwo)
        setingCornerRadius(radius: 30, image: imageThree)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}


