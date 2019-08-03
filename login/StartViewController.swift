//
//  StartViewController.swift
//  login
//
//  Created by Ahmet Mohammed on 8/2/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit
import Firebase

class StartViewController: UIViewController {

    @IBAction func loginBtn(_ sender: Any) {
    }
    
    @IBAction func signupBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "st2home", sender: nil)
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
