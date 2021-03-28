//
//  hozonViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class hozonViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!
    
    
  
    var  saveData: UserDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        // userdefaults　は左に入れたい箱の名前をつけて右その動きを入れる　ここではタンゴの箱に取得したものを入れる
       
        
        
        
        
       
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savetango(){
        
       
        
       
        saveData.set(titleTextField.text, forKey: "tango")
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "英単語を保存します",
        preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(
                title:"OK",
                style: .default,
                handler: { action in
                    print("ボタンが押されました")
                }))
        present(alert, animated: true, completion: nil)
        //print(gettango)
        
        //gettango.append(text!)
        
        
        
        

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
