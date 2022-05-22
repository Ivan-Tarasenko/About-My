//
//  WorkViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class WorkViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    private let colorOne = UIColor(
        red: 198/255,
        green: 255/255,
        blue: 188/255,
        alpha: 1
    )
    private let colorTwo = UIColor(
        red: 97/255,
        green: 145/255,
        blue: 89/255,
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}
