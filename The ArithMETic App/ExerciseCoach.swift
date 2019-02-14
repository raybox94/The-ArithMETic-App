//
//  ExerciseCoach.swift
//  The ArithMETic App
//
//  Created by rayaan on 13/02/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import Foundation
struct ExerciseCoach{
    
    static let sports:[String:Double] = ["Bicycling":8.0,"Jumping rope":12.3,"Running - slow":9.8,"Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    
    static func energyConsumed(during: String,weight: Double,time: Double) -> Double{
        
        let met = sports[during]!
        
        let energyConsumed:Double = Double(String(format: "%.1f", ((met * 3.5 * (weight/2.2))/200)*time))!
        return energyConsumed
    }//end of method energy consumed
    
    static  func timeToLose1Pound(during: String,weight: Double) -> Double{
        
        let met = sports[during]!
        let timeToLose1Pound = Double(String(format: "%.1f",(3500/((met * 3.5 * (weight/2.2))/200))))!
        return timeToLose1Pound
    }//end of method time To loase 1 pound
    
}//end of struct
