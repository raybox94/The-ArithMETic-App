//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by rayaan on 11/02/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var activity1:String?
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let activity = ["Bicycling","Jumping rope","Running - slow","Running - fast","Tennis","Swimming"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activity[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activity1 = activity[row]
    }
    
    
    @IBOutlet weak var weightTF: UITextField!
    
    @IBOutlet weak var excerciseTF: UITextField!
    
    @IBOutlet weak var energyConsumedLB: UILabel!
    
    @IBOutlet weak var timeLoseLB: UILabel!
    
    
    @IBAction func calculate(_ sender: Any) {
        let weight = Double(weightTF.text!)
        let excercise = Double(excerciseTF.text!)
        
        if weight == nil || excercise == nil || activity1 == nil{
            
        }else{
            let energyConsumed = ExerciseCoach.energyConsumed(during: activity1!, weight: weight!, time: excercise!)//end of method call
            let timeToLose1Pound = ExerciseCoach.timeToLose1Pound(during:activity1!,weight:weight!)//end of method call
            energyConsumedLB.text = "\(energyConsumed) cal"
            timeLoseLB.text = "\(timeToLose1Pound) minutes"
        }//end of if-else case
        
    }//end of caliculate method
    
    @IBAction func clear(_ sender: Any) {
        weightTF.text = ""
        excerciseTF.text = ""
        activity1 = nil
        energyConsumedLB.text = "0 cal"
        timeLoseLB.text = "0 minutes"
        pickerView.selectRow(0, inComponent: 0, animated: true)
    }//end of clear method
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

