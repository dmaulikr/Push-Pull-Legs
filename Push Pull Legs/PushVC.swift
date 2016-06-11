//
//  PushVC.swift
//  Push Pull Legs
//
//  Created by Andrew Mallozzi on 1/26/16.
//  Copyright © 2016 Andrew Mallozzi. All rights reserved.
//

import UIKit

class PushVC: UIViewController, UITextFieldDelegate {

    // Bench Press Outlets
    @IBOutlet weak var benchPressSetOne: UIButton!
    @IBOutlet weak var benchPressSetTwo: UIButton!
    @IBOutlet weak var benchPressSetThree: UIButton!
    @IBOutlet weak var benchPressSetFour: UIButton!
    @IBOutlet weak var benchPressSetFive: UIButton!
    @IBOutlet weak var benchPressWeightEntry: UITextField!
    @IBOutlet weak var benchPressWeightDisplay: UILabel!
    
    // Incline Dumbbell Press Outlets
    @IBOutlet weak var inclinePressSetOne: UIButton!
    @IBOutlet weak var inclinePressSetTwo: UIButton!
    @IBOutlet weak var inclinePressSetThree: UIButton!
    @IBOutlet weak var inclinePressSetFour: UIButton!
    @IBOutlet weak var inclinePressWeightEntry: UITextField!
    @IBOutlet weak var inclinePressWeightDisplay: UILabel!
    
    // Tricep Extension Outlets
    @IBOutlet weak var tricepExtensionSetOne: UIButton!
    @IBOutlet weak var tricepExtensionSetTwo: UIButton!
    @IBOutlet weak var tricepExtensionSetThree: UIButton!
    @IBOutlet weak var tricepExtensionSetFour: UIButton!
    @IBOutlet weak var tricepExtensionWeightEntry: UITextField!
    @IBOutlet weak var tricepExtensionWeightDisplay: UILabel!
    
    // Tricep Pushdown Outlets
    @IBOutlet weak var tricepPushdownSetOne: UIButton!
    @IBOutlet weak var tricepPushdownSetTwo: UIButton!
    @IBOutlet weak var tricepPushdownSetThree: UIButton!
    @IBOutlet weak var tricepPushdownSetFour: UIButton!
    @IBOutlet weak var tricepPushdownWeightEntry: UITextField!
    @IBOutlet weak var tricepPushdownWeightDisplay: UILabel!
    
    // Flyes Outlets
    @IBOutlet weak var flyesSetOne: UIButton!
    @IBOutlet weak var flyesSetTwo: UIButton!
    @IBOutlet weak var flyesSetThree: UIButton!
    @IBOutlet weak var flyesSetFour: UIButton!
    @IBOutlet weak var flyesWeightEntry: UITextField!
    @IBOutlet weak var flyesWeightDisplay: UILabel!
    
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            

        
        // Scroll View
        scrollView.contentSize.height = 975
        
        // load saved NSUserDefault Data
        if let bpress = defaults.stringForKey("savedbenchpress") {
            benchPressWeightDisplay.text = "5 x 5 @ \(bpress) lbs"
        }
        if let ipress = defaults.stringForKey("savedinclinepress") {
            inclinePressWeightDisplay.text = "4 x 8-12 @ \(ipress) lbs"
        }
        if let textension = defaults.stringForKey("savedtricepextension") {
            tricepExtensionWeightDisplay.text = "4 x 8-12 @ \(textension) lbs"
        }
        if let tpushdown = defaults.stringForKey("savedtriceppushdown") {
            tricepPushdownWeightDisplay.text = "4 x 8-12 @ \(tpushdown) lbs"
        }
        if let fly = defaults.stringForKey("savedflyes") {
            flyesWeightDisplay.text = "4 x 8-12 @ \(fly) lbs"
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
    
    
    // Save Push Workout Data
    @IBAction func savePushWorkout(sender: AnyObject) {
        // Save the data to NS User Defaults
        defaults.setObject(benchPressWeightEntry.text, forKey: "savedbenchpress")
        defaults.setObject(inclinePressWeightEntry.text, forKey: "savedinclinepress")
        defaults.setObject(tricepExtensionWeightEntry.text, forKey: "savedtricepextension")
        defaults.setObject(tricepPushdownWeightEntry.text, forKey: "savedtriceppushdown")
        defaults.setObject(flyesWeightEntry.text, forKey: "savedflyes")
        defaults.synchronize()
        
        // Display the saved data
        if let bpress = defaults.stringForKey("savedbenchpress") {
            benchPressWeightDisplay.text = "5 x 5 @ \(bpress) lbs"
        }
        if let ipress = defaults.stringForKey("savedinclinepress") {
            inclinePressWeightDisplay.text = "4 x 8-12 @ \(ipress) lbs"
        }
        if let textension = defaults.stringForKey("savedtricepextension") {
            tricepExtensionWeightDisplay.text = "4 x 8-12 @ \(textension) lbs"
        }
        if let tpushdown = defaults.stringForKey("savedtriceppushdown") {
            tricepPushdownWeightDisplay.text = "4 x 8-12 @ \(tpushdown) lbs"
        }
        if let fly = defaults.stringForKey("savedflyes") {
            flyesWeightDisplay.text = "4 x 8-12 @ \(fly) lbs"
        }
        
        // Clear the text field contents
        benchPressWeightEntry.text = ""
        inclinePressWeightEntry.text = ""
        tricepExtensionWeightEntry.text = ""
        tricepPushdownWeightEntry.text = ""
        flyesWeightEntry.text = ""
        
        // Dismiss the keyboards
        benchPressWeightEntry.resignFirstResponder()
        inclinePressWeightEntry.resignFirstResponder()
        tricepExtensionWeightEntry.resignFirstResponder()
        tricepPushdownWeightEntry.resignFirstResponder()
        flyesWeightEntry.resignFirstResponder()
    }
    
    
    
    // Bench Press Actions
    @IBAction func benchPressSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func benchPressSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    
    @IBAction func benchPressSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    
    @IBAction func benchPressSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func benchPressSetFivePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Incline Dumbbell Press Actions
    @IBAction func inclinePressSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func inclinePressSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func inclinePressSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func inclinePressSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Tricep Extension Actions
    @IBAction func tricepExtensionSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepExtensionSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepExtensionSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepExtensionSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Tricep Pushdown Actions
    @IBAction func tricepPushdownSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepPushdownSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepPushdownSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func tricepPushdownSetFourPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
        // Alert to add more weight
        let alert = UIAlertController(title: "Add Weight!", message: "Add 5 lbs next time!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Got it!", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // Flyes Actions
    @IBAction func flyesSetOnePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func flyesSetTwoPressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func flyesSetThreePressed(button: UIButton) {
        button.backgroundColor = UIColor(red: 0, green: 159/255, blue: 212/255, alpha: 1)
        button.setTitleColor(UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1), forState: .Normal)
    }
    @IBAction func flyesSetFourPressed(button: UIButton) {
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
