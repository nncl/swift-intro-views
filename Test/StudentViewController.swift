//
//  StudentViewController.swift
//  Test
//
//  Created by Usuário Convidado on 15/02/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController {

    // MARK: - Variables
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    
    var username: String?
    var password: String?
    
    // MARK: - Super methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // get data from earlier view
        // desembrulhando correctly
        if let name = username {
            lblUsername.text = name
        }
        
        if let password = password {
            lblPassword.text = password
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Methods
    
    @IBAction func back(_ sender: UIButton) {
        // dismiss(animated: true, completion: nil)
        
        // Not modal anymore
        navigationController?.popViewController(animated: true)
    }
    

}
