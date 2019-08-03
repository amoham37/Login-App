//
//  EditViewController.swift
//  login
//
//  Created by Ahmet Mohammed on 8/2/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit
import Firebase

class EditViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func submitBtn(_ sender: Any) {
        let user = Auth.auth().currentUser
        if let user = user {
            let changeRequest = user.createProfileChangeRequest()
            
            changeRequest.displayName = nameField.text
            changeRequest.commitChanges { error in
                if let error = error {
                    // An error happened.
                } else {
                    // Profile updated.
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
