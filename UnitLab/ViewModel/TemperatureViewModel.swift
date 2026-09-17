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
        
        var fromText: String = "0" {
            didSet {
                convert()
            }
        }
        var toText: String = "32"
        
        var fromUnit: TemperatureUnit = .celsius {
            didSet {
                convert()
            }
        }
        var toUnit: TemperatureUnit = .fahrenheit {
            didSet {
                convert()
            }
        }
        
        func isReversed() {
            let temp = fromUnit
            fromUnit = toUnit
            toUnit = temp
        }
        
        private func convert() {
            let normalizedText = fromText.replacingOccurrences(
                of: ",",
                with: "."
            )

            guard let value = Double(normalizedText) else {
                toText = ""
                return
            }

            let source = Measurement(
                value: value,
                unit: foundationUnit(for: fromUnit)
            )

            let result = source.converted(
                to: foundationUnit(for: toUnit)
            )

            toText = result.value.formatted(
                .number.precision(.fractionLength(0...6))
            )
        }

        private func foundationUnit(
            for unit: TemperatureUnit
        ) -> UnitTemperature {
            switch unit {
            case .celsius:
                return .celsius
            case .fahrenheit:
                return .fahrenheit
            case .kelvin:
                return .kelvin
            }
        }
    }
}

