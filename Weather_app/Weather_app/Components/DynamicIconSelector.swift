//
//  DynamicIconSelector.swift
//  Weather_app
//
//  Created by Ishaan Shetty on 02/01/23.
//

import Foundation

class DynamicIconSelector{
    func getIcon(weatherType: String) -> String{
        var logoName = "sun.min.fill"
        
        if(weatherType == "Sunny"){
            logoName = "sun.min.fill"
        }
        else if(weatherType == "Smoke"){
            logoName = "smoke.fill"
        }
        else if(weatherType == "Rain"){
            logoName = "cloud.rain.fill"
        }
        else if(weatherType == "Cloudy"){
            logoName = "cloud.fill"
        }
        
        return logoName;
    }
}
