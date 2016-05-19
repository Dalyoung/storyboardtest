//
//  ThirdViewController.swift
//  Push
//
//  Created by MF839-009 on 2016. 5. 19..
//  Copyright © 2016년 Samsung. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var textVal:String = ""
    
    @IBAction func send(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("Hello", object: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.str = "Hell"
        myLabel.text = appDelegate.str
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
