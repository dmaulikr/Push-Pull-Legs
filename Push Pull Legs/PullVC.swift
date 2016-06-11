//
//  PullVC.swift
//  Push Pull Legs
//
//  Created by Andrew Mallozzi on 1/26/16.
//  Copyright © 2016 Andrew Mallozzi. All rights reserved.
//

import UIKit

class PullVC: UIViewController, UITextFieldDelegate {

    // Deadlift Outlets
    @IBOutlet weak var deadliftSetOne: UIButton!
    @IBOutlet weak var deadliftSetTwo: UIButton!
    @IBOutlet weak var deadliftSetThree: UIButton!
    @IBOutlet weak var deadliftSetFour: UIButton!
    @IBOutlet weak var deadliftSetFive: UIButton!
    @IBOutlet weak var deadliftWeightEntry: UITextField!
    @IBOutlet weak var deadliftWeightDisplay: UILabel!
    
    // Overhead Pulldown Outlets
    @IBOutlet weak var overheadPulldownSetOne: UIButton!
    @IBOutlet weak var overheadPulldownSetTwo: UIButton!
    @IBOutlet weak var overheadPulldownSetThree: UIButton!
    @IBOutlet weak var overheadPulldownSetFour: UIButton!
    @IBOutlet weak var overheadPulldownWeightEntry: UITextField!
    @IBOutlet weak var overheadPulldownWeightDisplay: UILabel!
    
    // Cable Row Outlets
    @IBOutlet weak var cableRowSetOne: UIButton!
    @IBOutlet weak var cableRowSetTwo: UIButton!
    @IBOutlet weak var cableRowSetThree: UIButton!
    @IBOutlet weak var cableRowSetFour: UIButton!
    @IBOutlet weak var cableRowWeightEntry: UITextField!
    @IBOutlet weak var cableRowWeightDisplay: UILabel!
    
    // Dumbbell Curl Outlets
    @IBOutlet weak var dumbbellCurlSetOne: UIButton!
    @IBOutlet weak var dumbbellCurlSetTwo: UIButton!
    @IBOutlet weak var dumbbellCurlSetThree: UIButton!
    @IBOutlet weak var dumbbellCurlSetFour: UIButton!
    @IBOutlet weak var dumbbellCurlWeightEntry: UITextField!
    @IBOutlet weak var dumbbellCurlWeightDisplay: UILabel!
    
    // Hammer Curl Outlets
    @IBOutlet weak var hammerCurlSetOne: UIButton!
    @IBOutlet weak var hammerCurlSetTwo: UIButton!
    @IBOutlet weak var hammerCurlSetThree: UIButton!
    @IBOutlet weak var hammerCurlSetFour: UIButton!
    @IBOutlet weak var hammerCurlWeightEntry: UITextField!
    @IBOutlet weak var hammerCurlWeightDisplay: UILabel!
        
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Scroll View
        scrollView.contentSize.height = 975
        
        // load saved NSUserDefault Data
        if let dlift = defaults.stringForKey("saveddeadlift") {
            deadliftWeightDisplay.text = "5 x 5 @ \(dlift) lbs"
        }
        if let opulldown = defaults.stringForKey("savedoverheadpulldown") {
            overheadPulldownWeightDisplay.text = "4 x 8-12 @ \(opulldown) lbs"
        }
        if let crow = defaults.stringForKey("savedcablerow") {
            cableRowWeightDisplay.text = "4 x 8-12 @ \(crow) lbs"
        }
        if let dcurl = defaults.stringForKey("saveddumbbellcurl") {
            dumbbellCurlWeightDisplay.text = "4 x 8-12 @ \(dcurl) lbs"
        }
        if let hcurl = defaults.stringForKey("savedhammercurl") {
            hammerCurlWeightDisplay.text = "4 x 8-12 @ \(hcurl) lbs"
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
    
    
    // Save Pull Workout Data
    @IBAction func savePullWorkout(sender: AnyObject) {
        // Save the data to NS User Defaults
        defaults.setObject(deadliftWeightEntry.text, forKey: "saveddeadlift")
        defaults.setObject(overheadPulldownWeightEntry.text, forKey: "savedoverheadpulldown")
        defaults.setObject(cableRowWeightEntry.text, forKey: "savedcablerow")
        defaults.setObject(dumbbellCurlWeightEntry.text, forKey: "saveddumbbellcurl")
        defaults.setObject(hammerCurlWeightEntry.text, forKey: "savedhammercurl")
        defaults.synchronize()
        
        // Display the saved data
        if let dlift = defaults.stringForKey("saveddeadlift") {
            deadliftWeightDisplay.text = "5 x 5 @ \(dlift) lbs"
        }
        if let opulldown = defaults.stringForKey("savedoverheadpulldown") {
            overheadPulldownWeightDisplay.text = "4 x 8-12 @ \(opulldown) lbs"
        }
        if let crow = defaults.stringForKey("savedcablerow") {
            cableRowWeightDisplay.text = "4 x 8-12 @ \(crow) lbs"
        }
        if let dcurl = defaults.stringForKey("saveddumbbellcurl") {
            dumbbellCurlWeightDisplay.text = "4 x 8-12 @ \(dcurl) lbs"
        }
        if let hcurl = defaults.stringForKey("savedhammercurl") {
            hammerCurlWeightDisplay.text = "4 x 8-12 @ \(hcurl) lbs"
        }
        
        // Clear the text field contents
        deadliftWeightEntry.text = ""
        overheadPulldownWeightEntry.text = ""
        cableRowWeightEntry.text = ""
        dumbbellCurlWeightEntry.text = ""
        hammerCurlWeightEntry.text = ""
        
        // Dismiss the keyboards
        deadliftWeightEntry.resignFirstResponder()
        overheadPulldownWeightEntry.resignFirstResponder()
        cableRowWeightEntry.resignFirstResponder()
        dumbbellCurlWeightEntry.resignFirstResponder()
        hammerCurlWeightEntry.resignFirstResponder()
    }
    
    
    // Deadlift Actions
    @IBAction func deadliftSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func deadliftSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func deadliftSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func deadliftSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func deadliftSetFivePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Overhead Pulldown Actions
    @IBAction func overheadPulldownSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func overheadPulldownSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func overheadPulldownSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func overheadPulldownSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Cable Row Actions
    @IBAction func cableRowSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func cableRowSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func cableRowSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func cableRowSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Dumbbell Curl Actions
    @IBAction func dumbbellCurlSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func dumbbellCurlSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func dumbbellCurlSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func dumbbellCurlSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Hammer Curl Actions
    @IBAction func hammerCurlSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func hammerCurlSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func hammerCurlSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func hammerCurlSetFourPressed(button: UIButton) {
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
