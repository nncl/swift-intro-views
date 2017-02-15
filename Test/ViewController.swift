//
//  ViewController.swift
//  Test
//
//  Created by caue almeida on 15/02/17.
//  Copyright © 2017 caue almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // createSubviews()
    }
    
    func createSubviews() {
        let view2 = UIView(frame: CGRect(x: 0, y: 248, width: 100, height: 180))
        view2.clipsToBounds = true // such as overflow hidden in css
        view2.backgroundColor = #colorLiteral(red: 1, green: 0.3440234959, blue: 0.2591320872, alpha: 1)
        //.red
        //UIColor.red
        //UIColor(red: 1, green: 0, blue: 0, alpha: 0.85)
        
        view.addSubview(view2)
        
        // label
        let label = UILabel() // not creating frame in here
        // lets create it here
        label.frame = CGRect(x: 0, y: 10, width: view.frame.size.width, height: 30)
        // y == 10 cause is relative to its view parent
        label.text = "Registered Data" // alignment is to the left by default
        label.textColor = .white
        label.textAlignment = .center
        view2.addSubview(label) //o\\
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

