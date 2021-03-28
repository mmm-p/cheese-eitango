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
    @IBAction func cancel() {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func tangocheck(){
        let wtango = saveData.object(forKey: "tango") as! String
        saveData.set(titleTextField.text, forKey: "new")
        let alert: UIAlertController = UIAlertController(title: "保存", message: "英単語を保存します",
                                                         preferredStyle: .alert)
        print("OK")
        alert.addAction(
            
            UIAlertAction(
                
                title:"OK",
                style: .default,
                  handler: {action in
                    print("ボタンが押されました2")
                    let newtango = self.saveData.object(forKey: "new")as! String
                    if wtango == newtango{
                        self.performSegue(withIdentifier: "seikai", sender: nil)
                    }
                    else{
                        self.performSegue(withIdentifier: "zannen", sender: nil)
                    }
                  }
               
                
                
            ))
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
