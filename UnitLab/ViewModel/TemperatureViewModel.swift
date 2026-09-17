//
//  TemperatureViewModel.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import Foundation
import SwiftUI

extension TemperatureView {
    @Observable
    final class TemperatureViewModel {
        
        // Зміні
        var fromText: String = "0"
        var toText: String = "32"
        
        var fromUnit: TemperatureUnit = .celsius
        var toUnit: TemperatureUnit = .fahrenheit
        
        func convert() {
            
        }
        
        
    }
}

