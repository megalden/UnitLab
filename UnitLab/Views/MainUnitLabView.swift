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
                TitleView()
                
                CustomPickerView(selection: $selection)
                
                switch selection {
                case .temperature:
                    TemperatureView()
                case .length:
                    LengthView()
                case .weight:
                    WeightView()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

enum ConvertValue: String, CaseIterable {
    case temperature = "Temperature"
    case length = "Length"
    case weight = "Weight"
}

#Preview {
    MainUnitLabView()
}
