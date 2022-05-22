//
//  HobbieViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class HobbieViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThee: UIImageView!
    
    private let colorOne = UIColor(
        red: 133/255,
        green: 235/255,
        blue: 239/255,
        alpha: 1
    )
    private let colorTwo = UIColor(
        red: 227/255,
        green: 128/255,
        blue: 128/255,
        alpha: 1
    )

    private var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0.4, y: 0.9)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
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
        setingCornerRadius(radius: 30, image: imageThee)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}



