//
//  tangonyuuryokuViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class tangonyuuryokuViewController: UIViewController, UITextViewDelegate {
    var  saveData: UserDefaults = UserDefaults.standard
   
    @IBOutlet var label: UILabel!
    @IBOutlet var titleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
         

        // Do any additional setup after loading the view.
    }
    @IBAction func tangocheck(){
        let wtango = saveData.object(forKey: "tango") as! String
        saveData.set(titleTextField.text, forKey: "new")
        let newtango = saveData.object(forKey: "new")as! String
        if wtango == newtango{
            print("OK")
        }
        else{
            print("違う")
        }
        }
    }
    
    


