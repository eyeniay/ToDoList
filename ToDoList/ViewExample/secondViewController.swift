//
//  secondViewController.swift
//  ViewExample
//
//  Created by ETHEM YENİAY on 10/11/2016.
//  Copyright © 2016 ETHEM YENİAY. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    
    

    @IBOutlet weak var name: UITextField!
    var array:[String] = []
    
    @IBAction func addList(_ sender: AnyObject) {
        
        if let object=UserDefaults.standard.object(forKey:"note")
        {
            array=object as! [String]
        }
        
       array.append(name.text!)
        UserDefaults.standard.set(array,forKey:"note")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
