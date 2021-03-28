//
//  SEIKAIViewController.swift
//  cheese eitango
//
//  Created by 柳川万結 on 2020/11/14.
//

import UIKit

class SEIKAIViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var cheeseImage2: UIImageView!
    @IBAction func seikai(){
        navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
