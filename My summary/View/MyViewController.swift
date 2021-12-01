//
//  MyViewController.swift
//  My summary
//
//  Created by Иван Тарасенко on 20.05.2021.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var myFoto: UIImageView!
    
    private let startPointGradient = CGPoint(x: 0.0, y: 1.3)
    private let endPointGradient = CGPoint(x: 1.0, y: 0.0)
    private let colorOne = UIColor(red: 163/255,
                                   green: 204/255,
                                   blue: 107/255,
                                   alpha: 1)
    private let colorTwo = UIColor(red: 244/255,
                                   green: 215/255,
                                   blue: 119/255,
                                   alpha: 1)
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
  
        view.withGradientBackground(color1: colorOne,
                                    color2: colorTwo,
                                    startPoint: startPointGradient,
                                    endPoint: endPointGradient,
                                    locations: [0.1, 1.0])
        
        setingCornerRadius(radius: 30, image: myFoto)

        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = tabBarItem.title
    }


}
