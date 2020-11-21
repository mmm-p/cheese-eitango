//
//  hozonViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class hozonViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!
    
    var Userdefaults = UserDefaults.standard
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let tango = Userdefaults.string(forKey: "title")
        // userdefaults　は左に入れたい箱の名前をつけて右にその動きを入れる　ここではタンゴの箱に取得したものを入れる
        let maxspeed = Userdefaults.array(forKey: "udMaxSpeed")
        print(maxspeed)
        print(tango)
        
        let getMaxSpeed: [Int] = Userdefaults.array(forKey: "udMaxSpeed") as! [Int]
        
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savetango(){
        
        Userdefaults.set(titleTextField.text, forKey: "title")
        let maxspeed: [Int] = []
        Userdefaults.set(maxspeed, forKey: "udMaxSpeed")
        
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
