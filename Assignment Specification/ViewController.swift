//
//  ViewController.swift
//  Assignment Specification
//
//  Created by Bryan Okada on 3/30/16.
//  Copyright © 2016 Bryan Okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbl_topic: UILabel!
    
    @IBOutlet var lbl_timer: UILabel!
    
    
    
    var topics: [String] = ["Let vs Var", "Computed Initializers", "Computed Variables", "Setter Observeers", "Functions", "External Parameters", "Default Parameters", "Anonymous Functions", "Optional Chaining", "Failable Initializers", "Casting", "Cast Methods", "Extensions", "Enumerations", "Error Handling", "Dictionaries", "Conditional Binding", "Protocols", "Inheritence", "Structs", "Enums", "Classes" , "Subscripts", "Setter Observers"]
    var time = 30
    var time_run = false
    var timer = NSTimer()
    
    
    func time_count ()
    {
        if time == 0
        {
            lbl_topic.text = topics[rand_num()]
            time = 30
            lbl_timer.text = "\(time)"
        }
        else{
            time -= 1
            lbl_timer.text = "\(time)"
        }
    }
    
    func start_count()
    {
        if time_run == false{
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self , selector: Selector("time_count"), userInfo: nil, repeats: true)
            time_run = true
        }
        
    }
    
    
    func rand_num () -> Int
    {
        var x = Int(arc4random_uniform(24))
        return x
    }
    
    
    
    @IBAction func btn_next(sender: AnyObject) {
            lbl_topic.text = topics[rand_num()]
        
        
        time = 30
            
        
        

        
    }
    
    @IBAction func btn_start(sender: AnyObject) {
        if time_run == false{
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self , selector: Selector("time_count"), userInfo: nil, repeats: true)
            time_run = true
            
        }
        
        

        
        
    }
    
    
    @IBAction func btn_stop(sender: AnyObject) {
        
        if time_run == true{
            timer.invalidate()
            time_run = false
            
        }
    }
    
    
  
    
   
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

