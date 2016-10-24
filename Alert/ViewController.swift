//
//  ViewController.swift
//  Alert
//
//  Created by Dhvl Golakiya on 19/10/16.
//  Copyright © 2016 mitesh chodvadiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloAlertBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnClick(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Hey AppCoda", message: "What do you want to do?", preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{
            action in
                        let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .actionSheet)
            
                        alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            
                        self.present(alertMessage, animated: true, completion: nil)
            

            
        })
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

