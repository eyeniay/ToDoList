//
//  ViewController.swift
//  ViewExample
//
//  Created by ETHEM YENİAY on 10/11/2016.
//  Copyright © 2016 ETHEM YENİAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var array:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let object=UserDefaults.standard.object(forKey:"note")
        {
            array=object as! [String]
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return array.count
    }
    
   
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default,reuseIdentifier: "Cell")
        
        
            cell.textLabel?.text=array[indexPath.row];
        
        
        
        return cell
    }
    
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

