//
//  ViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func save(){
        
    }
    @IBAction func play(){
        
    }
    @IBOutlet weak var button: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var  saveData: UserDefaults = UserDefaults.standard
        let firstTango = saveData.object(forKey: "tango") as! String
        let length = firstTango.count
        if length == 0{
            saveData.set(forkey: "tango)
        }
    


}

}
