//
//  PlayViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class PlayViewController: UIViewController,UITextViewDelegate {
   
    var  saveData: UserDefaults = UserDefaults.standard
    var btext = ""
    
   
    @IBOutlet var label: UILabel!
    
    @IBOutlet  var cheeseImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        print(tango)
        print(tangocount)
        
        for _ in tango{
         btext += "_ "
         
        }
        label.text = btext
        
       
       
        
       
    }
    
    @IBAction func check (sender: UIButton){
       
               
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        
        
         if let alphabet = sender.currentTitle{
        
        print(alphabet)
            if tango.uppercased().contains(alphabet){
                print("一致")
                
                
          }else{
        
            
            cheeseImageView.image = UIImage(named: "cheese2")
          }
            
       
    }
    }
    
    
    

    
    
    
    
    
    
    @IBAction func wakatta(){
        
         
        
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
