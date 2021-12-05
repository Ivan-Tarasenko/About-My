//
//  HobbieVC.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class HobbieVC: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThee: UIImageView!
    
    private let startPointGradient = CGPoint(x: 0.4, y: -0.9)
    private let endPointGradient = CGPoint(x: 0.1, y: 1.0)
    private let colorOne = UIColor(red: 133/255,
                                   green: 235/255,
                                   blue: 239/255,
                                   alpha: 1
    )
    private let colorTwo = UIColor(red: 227/255,
                                   green: 128/255,
                                   blue: 128/255,
                                   alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.withGradientBackground(color1: colorOne,
                                    color2: colorTwo,
                                    startPoint: startPointGradient,
                                    endPoint: endPointGradient,
                                    locations: [0.3, 1.0])
        
        setingCornerRadius(radius: 30, image: imageOne)
        setingCornerRadius(radius: 30, image: imageTwo)
        setingCornerRadius(radius: 30, image: imageThee)
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}



