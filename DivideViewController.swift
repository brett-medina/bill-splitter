//
//  DivideViewController.swift
//  Bill Splitter
//
//  Created by Brett Medina on 8/26/18.
//  Copyright © 2018 Brett Medina. All rights reserved.
//

import UIKit

class DivideViewController: UIViewController {
    
    var totalAmount: Double?
    var numFriends: Int?
    var result: Double?
    
    @IBOutlet weak var totalAmountOutlet: UITextField!
    @IBOutlet weak var numFriendsOutlet: UITextField!
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        // Anytime text fields are updated, check if you can update the result text label
        totalAmountOutlet.addTarget(self, action: #selector(DivideViewController.calculate), for: UIControlEvents.editingChanged)
        numFriendsOutlet.addTarget(self, action: #selector(DivideViewController.calculate), for: UIControlEvents.editingChanged)
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func calculate() {
        if (totalAmountOutlet.text != nil) {
            totalAmount = Double(totalAmountOutlet.text!)
        }
        if (numFriendsOutlet.text != nil) {
            numFriends = Int(numFriendsOutlet.text!)
        }
        showResult()
    }
    
    func showResult() {
        if (totalAmount != nil && numFriends != nil) {
            result = totalAmount! / Double(numFriends!)
            resultOutlet.text = String(format: "$%.02f", result!)
        }
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
