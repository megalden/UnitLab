//
//  ContentView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 14.09.2026.
//

import SwiftUI

struct MainUnitLabView: View {
    
    @State private var selection: ConvertValue = .temperature
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Conver everda units, instantly.")
                
                CustomPickerView(selection: $selection)
                
                CustomTextFieldView()
                
                Spacer()

            }
            .navigationTitle("UnitLab")
            .padding()
        }
    }
}

enum TemperatureUnit: String, CaseIterable {
    case celsius = "°C"
    case fahrenheit = "°F"
    case kelvin = "°K"
}

enum ConvertValue: String, CaseIterable {
    case temperature = "Temperature"
    case length = "Length"
    case weight = "Weight"
}

#Preview {
    MainUnitLabView()
}
