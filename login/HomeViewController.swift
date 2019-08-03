//
//  HomeViewController.swift
//  login
//
//  Created by Ahmet Mohammed on 8/2/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController{
    
    @IBOutlet weak var userLbl: UILabel!
    
    @IBAction func logoutBtn(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    
    
    }
    
    @IBAction func editBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLbl.text = String((Auth.auth().currentUser?.displayName ?? " "))
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
