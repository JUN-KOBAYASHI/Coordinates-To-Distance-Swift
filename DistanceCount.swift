//
//  DistanceCount.swift
//
//  Created by VAndrJ on 29.01.16.
//  Copyright © 2016 VAndrJ. All rights reserved.
//

import Foundation

class DistanceCount {
    
    class func distance(lat1: Double, lon1: Double, lat2: Double, lon2: Double, units: String) -> Double {
        let θ = lon1 - lon2
        var distance = sin(º2rad(lat1)) * sin(º2rad(lat2)) + cos(º2rad(lat1)) * cos(º2rad(lat2)) * cos(º2rad(θ))
        distance = acos(distance)
        distance = rad2º(distance)
        switch units {
        //case "M": distance *= (69.09*1)
        case "K": distance *= (69.09*1.60934)
        case "N": distance *= (69.09*0.868976)
        case "m": distance *= (69.09*1.60934*1000)
        default: distance *= (69.09*1)
        }
        return (distance);
    }
    
    private class func º2rad(_ º: Double) -> Double {
        return (º * M_PI / 180.0);
    }
    
    private class func rad2º(_ rad: Double) -> Double {
        return (rad * 180 / M_PI);
    }
}
