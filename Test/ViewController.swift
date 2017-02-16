//
//  ViewController.swift
//  Test
//
//  Created by caue almeida on 15/02/17.
//  Copyright © 2017 caue almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    // MARK: - Super methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // createSubviews()
        
        print(view.subviews.count) // Direct child views, 1st level
        view.viewWithTag(2) // specific element in screen
        for subview in view.subviews.first!.subviews {
            print(subview.tag)
        }
        
        // But we do this in the real world:
        // Create a reference like we do in Android -> findById = IBOutlet for variables, IBActions from a button which exec funcs, derrr
        tfUsername.text = ""
        tfPassword.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // lets pass data to another view
        // deve ser tratado como studentviewcontroller...
        let viewController = segue.destination as! StudentViewController
        viewController.username = tfUsername.text
        viewController.password = tfPassword.text
    }
    
    // MARK: - Methods
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
    
    // MARK: - IBActions

    @IBAction func createStudent(_ sender: UIButton) {
        
        print("Let's to another screen")
        
        performSegue(withIdentifier: "studentSegue", sender: nil)
        
        // Log
        // print("Let's register \(tfUsername.text!) as student with \(tfPassword.text!) as password")
        
        // Alert
        /*
 let alert = UIAlertController(title: "Success", message: "Let's register \(tfUsername.text!) as student with \(tfPassword.text!) as password", preferredStyle: .alert)
        
        let alertOkAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(alertOkAction)
        
        present(alert,animated: true,completion: nil)
 */
    }

}

