//
//  LegsVC.swift
//  Push Pull Legs
//
//  Created by Andrew Mallozzi on 1/26/16.
//  Copyright © 2016 Andrew Mallozzi. All rights reserved.
//

import UIKit

class LegsVC: UIViewController, UITextFieldDelegate {
    
    // Squat Outlets
    @IBOutlet weak var squatSetOne: UIButton!
    @IBOutlet weak var squatSetTwo: UIButton!
    @IBOutlet weak var squatSetThree: UIButton!
    @IBOutlet weak var squatSetFour: UIButton!
    @IBOutlet weak var squatSetFive: UIButton!
    @IBOutlet weak var squatWeightEntry: UITextField!
    @IBOutlet weak var squatWeightDisplay: UILabel!
    
    // Leg Press Outlets
    @IBOutlet weak var legPressSetOne: UIButton!
    @IBOutlet weak var legPressSetTwo: UIButton!
    @IBOutlet weak var legPressSetThree: UIButton!
    @IBOutlet weak var legPressSetFour: UIButton!
    @IBOutlet weak var legPressWeightEntry: UITextField!
    @IBOutlet weak var legPressWeightDisplay: UILabel!
    
    // Leg Curl Outlets
    @IBOutlet weak var legCurlSetOne: UIButton!
    @IBOutlet weak var legCurlSetTwo: UIButton!
    @IBOutlet weak var legCurlSetThree: UIButton!
    @IBOutlet weak var legCurlSetFour: UIButton!
    @IBOutlet weak var legCurlWeightEntry: UITextField!
    @IBOutlet weak var legCurlWeightDisplay: UILabel!
    
    // Leg Extension Outlets
    @IBOutlet weak var legExtensionSetOne: UIButton!
    @IBOutlet weak var legExtensionSetTwo: UIButton!
    @IBOutlet weak var legExtensionSetThree: UIButton!
    @IBOutlet weak var legExtensionSetFour: UIButton!
    @IBOutlet weak var legExtensionWeightEntry: UITextField!
    @IBOutlet weak var legExtensionWeightDisplay: UILabel!
    
    // Calf Raise Outlets
    @IBOutlet weak var calfRaiseSetOne: UIButton!
    @IBOutlet weak var calfRaiseSetTwo: UIButton!
    @IBOutlet weak var calfRaiseSetThree: UIButton!
    @IBOutlet weak var calfRaiseSetFour: UIButton!
    @IBOutlet weak var calfRaiseWeightEntry: UITextField!
    @IBOutlet weak var calfRaiseWeightDisplay: UILabel!

    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Scroll View
        scrollView.contentSize.height = 975
        
        // load saved NSUserDefault Data
        if let squat = defaults.stringForKey("savedsquat") {
            squatWeightDisplay.text = "5 x 5 @ \(squat) lbs"
        }
        if let lpress = defaults.stringForKey("savedlegpress") {
            legPressWeightDisplay.text = "4 x 8-12 @ \(lpress) lbs"
        }
        if let lcurl = defaults.stringForKey("savedlegcurl") {
            legCurlWeightDisplay.text = "4 x 8-12 @ \(lcurl) lbs"
        }
        if let lextension = defaults.stringForKey("savedlegextension") {
            legExtensionWeightDisplay.text = "4 x 8-12 @ \(lextension) lbs"
        }
        if let craise = defaults.stringForKey("savedcalfraise") {
            calfRaiseWeightDisplay.text = "4 x 8-12 @ \(craise) lbs"
        }
        
        
        // Number Pad Keyboard Dismissal Setup
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "didTapView")
        self.view.addGestureRecognizer(tapRecognizer)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Save Leg Workout Data
    @IBAction func saveLegsWorkout(sender: AnyObject) {
        defaults.setObject(squatWeightEntry.text, forKey: "savedsquat")
        defaults.setObject(legPressWeightEntry.text, forKey: "savedlegpress")
        defaults.setObject(legCurlWeightEntry.text, forKey: "savedlegcurl")
        defaults.setObject(legExtensionWeightEntry.text, forKey: "savedlegextension")
        defaults.setObject(calfRaiseWeightEntry.text, forKey: "savedcalfraise")
        
        // Display the saved data
        if let squat = defaults.stringForKey("savedsquat") {
            squatWeightDisplay.text = "5 x 5 @ \(squat) lbs"
        }
        if let lpress = defaults.stringForKey("savedlegpress") {
            legPressWeightDisplay.text = "4 x 8-12 @ \(lpress) lbs"
        }
        if let lcurl = defaults.stringForKey("savedlegcurl") {
            legCurlWeightDisplay.text = "4 x 8-12 @ \(lcurl) lbs"
        }
        if let lextension = defaults.stringForKey("savedlegextension") {
            legExtensionWeightDisplay.text = "4 x 8-12 @ \(lextension) lbs"
        }
        if let craise = defaults.stringForKey("savedcalfraise") {
            calfRaiseWeightDisplay.text = "4 x 8-12 @ \(craise) lbs"
        }
        
        // Clear the text field contents
        squatWeightEntry.text = ""
        legPressWeightEntry.text = ""
        legCurlWeightEntry.text = ""
        legExtensionWeightEntry.text = ""
        calfRaiseWeightEntry.text = ""
        
        // Dismiss the keyboards
        squatWeightEntry.resignFirstResponder()
        legPressWeightEntry.resignFirstResponder()
        legCurlWeightEntry.resignFirstResponder()
        legExtensionWeightEntry.resignFirstResponder()
        calfRaiseWeightEntry.resignFirstResponder()
    }
    
    
    
    // Squat Actions
    @IBAction func squatSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func squatSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func squatSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func squatSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func squatSetFivePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Leg Press Actions
    @IBAction func legPressSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legPressSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legPressSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legPressSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Leg Curl Actions
    @IBAction func legCurlSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        }
    @IBAction func legCurlSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legCurlSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legCurlSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Leg Extension Actions
    @IBAction func legExtensionSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legExtensionSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legExtensionSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func legExtensionSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Calf Raise Actions
    @IBAction func calfRaiseSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func calfRaiseSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func calfRaiseSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func calfRaiseSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Number Pad Keyboard Dismissal
    func didTapView(){
        self.view.endEditing(true)
    }


}
