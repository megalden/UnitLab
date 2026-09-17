//
//  LengthViewModel.swift
//  UnitLab
//
//  Created by Володимир Галушка on 17.09.2026.
//

import Foundation
import SwiftUI

extension LengthView {
    
    @Observable
    final class LengthViewModel {
        var fromText: String = "0"
        var toText: String = "32"
        
        var fromUnit: LengthUnit = .centimeter
        var toUnit: LengthUnit = .kilometer
        
        func isReversed() {
            let temp = fromUnit
            fromUnit = toUnit
            toUnit = temp
        }
        
        func convert() {
            
        }
        
        private func foundationUnit(for unit: LengthUnit) -> UnitLength {
            switch unit {
            case .centimeter:
                return .centimeters
            case .inch:
                return .inches
            case .meter:
                return .meters
            case .kilometer:
                return .kilometers
            case .mile:
                return .miles
            }
        }
    }
}
