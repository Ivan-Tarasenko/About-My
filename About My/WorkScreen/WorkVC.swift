//
//  WorkVC.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class WorkVC: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    private let startPointGradient = CGPoint(x: 0.4, y: -0.9)
    private let endPointGradient = CGPoint(x: 0.1, y: 1.0)
    
    private let colorOne = UIColor(red: 198/255,
                                   green: 255/255,
                                   blue: 188/255,
                                   alpha: 1
    )
    private let colorTwo = UIColor(red: 97/255,
                                   green: 145/255,
                                   blue: 89/255,
                                   alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.gradientBackground(color1: colorOne,
                                       color2: colorTwo,
                                       startPoint: startPointGradient,
                                       endPoint: endPointGradient,
                                       locations: [0.1, 1.0],
                                       inView: contentView
        )
        
        setingCornerRadius(radius: 30, image: imageOne)
        setingCornerRadius(radius: 30, image: imageTwo)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}
