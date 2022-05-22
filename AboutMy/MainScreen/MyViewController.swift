//
//  MyViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 20.05.2021.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var myFoto: UIImageView!

    private let colorOne = UIColor(
        red: 163/255,
        green: 204/255,
        blue: 107/255,
        alpha: 1
    )
    private let colorTwo = UIColor(
        red: 244/255,
        green: 215/255,
        blue: 119/255,
        alpha: 1
    )

   private var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
            gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }

    override func viewDidLayoutSubviews() {
        gradientLayer.frame = view.frame
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)

        setingCornerRadius(radius: 30, image: myFoto)
    }

}
