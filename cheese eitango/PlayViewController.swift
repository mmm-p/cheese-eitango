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
    var blindText1 = ""
    var blindText2 = ""
    var count = 0
    var arrayString: [String] = []
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet  var cheeseImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        print(tango)
        print(tangocount)
        
        for _ in tango{
            arrayString.append("_ ")
         
        }
        label.text = arrayString.joined(separator: "")
        
       
       
        
       
    }
    
    @IBAction func check (sender: UIButton){
       
               
        let tango  = saveData.object(forKey: "tango") as! String
        let tangocount = tango.unicodeScalars.count
        
       
        if let alphabet = sender.currentTitle{
        
        print(alphabet)
            if tango.uppercased().contains(alphabet){
                blindText = ""
                let bunkatuArray = Array(tango.uppercased())
               print(bunkatuArray)
                for i in bunkatuArray {
                   
                      print(i)
                        if String(i) == alphabet{
                            arrayString.append(alphabet + " ")
                            print(arrayString)

                            
                        }else{
                            arrayString.append("_ ")
                           print(arrayString)

                        }
                       
                        
                       
                       
                      

                }
         label.text = arrayString.joined(separator: "")
                
                
                
          }else{
           
            count = count + 1
            print(count)
            let numberImage = "cheese" + String(count)
            cheeseImageView.image = UIImage(named:numberImage)
            
          
            if count == 6{
                self.performSegue(withIdentifier: "nocheese", sender: self)
            }
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
