//
//  MyFamily.swift
//  My summary
//
//  Created by Иван Тарасенко on 19.05.2021.
//

import UIKit

class MyFamily: UIViewController {
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    
    private let startPointGradient = CGPoint(x: 1.5, y: -0.9)
    private let endPointGradient = CGPoint(x: 0.1, y: 1.0)
    private let colorOne = UIColor(red: 167/255,
                                   green: 119/255,
                                   blue: 244/255,
                                   alpha: 1)
    private let colorTwo = UIColor(red: 253/255,
                                   green: 207/255,
                                   blue: 83/255,
                                   alpha: 1)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.withGradientBackground(color1: colorOne,
                                    color2: colorTwo,
                                    startPoint: startPointGradient,
                                    endPoint: endPointGradient,
                                    locations: [0.6, 1.0])
        
        setingCornerRadius(radius: 30, image: imageOne)
        setingCornerRadius(radius: 30, image: imageTwo)
        setingCornerRadius(radius: 30, image: imageThree)
        


    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }
}


