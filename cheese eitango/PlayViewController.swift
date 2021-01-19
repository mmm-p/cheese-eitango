//
//  PlayViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class PlayViewController: UIViewController,UITextViewDelegate {
   
    var  saveData: UserDefaults = UserDefaults.standard
    var blindText = ""
    var count = 0
   
    @IBOutlet var label: UILabel!
    
    @IBOutlet  var cheeseImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        print(tango)
        print(tangocount)
        
        for _ in tango{
         blindText += "_ "
         
        }
        label.text = blindText
        
       
       
        
       
    }
    
    @IBAction func check (sender: UIButton){
       
               
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        
       
        if let alphabet = sender.currentTitle{
        
        print(alphabet)
            if tango.uppercased().contains(alphabet){
                
                
            
                for i in 0...tangocount  {
                    if let range = tango.uppercased().suffix(tangocount-i).range(of: alphabet){
                       
                        blindText.replaceSubrange(range, with: alphabet)
                        
                        label.text = blindText
                        print(blindText)
                      

                }
                }
                
          }else{
           
            count = count + 1
            print(count)
            let numberImage = "cheese" + String(count)
            cheeseImageView.image = UIImage(named:numberImage)
            
          }
            if count == 6{
                self.performSegue(withIdentifier: "nocheese", sender: self)
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
