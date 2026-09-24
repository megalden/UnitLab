
import Foundation
import SwiftUI

extension WeightView {
    @Observable
    final class WeightViewModel {
        var fromText: String = "0"
        var toText: String = "32"
        
        var fromUnit: WeightUnit = .gram
        var toUnit: WeightUnit = .kilogram
        
        func isReversed() {
            let weight = fromUnit
            fromUnit = toUnit
            toUnit = weight
        }
    }
}

