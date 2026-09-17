//
//  UnitSelectable.swift
//  UnitLab
//
//  Created by Володимир Галушка on 14.09.2026.
//

import Foundation

protocol UnitSelectable: CaseIterable, Hashable {
    var title: String { get }
}

enum TemperatureUnit: String, UnitSelectable {
    case celsius = "°C"
    case fahrenheit = "°F"
    case kelvin = "°K"
    
    var title: String {
        rawValue
    }
}

enum LengthUnit: String, UnitSelectable {
    case kilometer = "km"
    case inch = "in"
    case meter = "m"
    case centimeter = "cm"
    case mile = "mi"
    
    var title: String {
        rawValue
    }
}
