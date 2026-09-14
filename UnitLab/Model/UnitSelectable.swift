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
    var title: String {
        rawValue
    }
    
    case celsius = "°C"
    case fahrenheit = "°F"
    case kelvin = "°K"
}
