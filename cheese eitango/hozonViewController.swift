//
//  hozonViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class hozonViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!
    
    var userDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        let maxSpeed: [String] = [""]//Userdefaults に入れる値？？？？
        userDefaults.set(maxSpeed, forKey:"udMaxSpeed" )
        let getMaxSpeed: [String] = userDefaults.array(forKey: "udMaxSpeed")as![String]
        print(getMaxSpeed)
        
        
        
        

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
