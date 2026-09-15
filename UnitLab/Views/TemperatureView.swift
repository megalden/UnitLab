//
//  TemperatureView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 14.09.2026.
//

import SwiftUI

struct TemperatureView: View {
    
    @State var fromTempText: String = "0"
    @State var toTempText: String = "0"
    @State var selectFromTemp: TemperatureUnit = .celsius
    @State var selectToTemp: TemperatureUnit = .fahrenheit
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("From")
                
                CustomTextFieldView(selection: $selectFromTemp, text: $fromTempText)
            }
            
            Button {
                let reverse: String = fromTempText
                fromTempText = toTempText
                toTempText = reverse
                
            } label: {
                ZStack {
                    Image(systemName: "arrow.up.arrow.down")
                        .tint(Color.primary)
                        .font(Font.body.bold())
                    
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue.opacity(0.1))
                }
            }
            
            VStack(alignment: .leading) {
                Text("To")
                
                CustomTextFieldView(selection: $selectToTemp, text: $toTempText)
            }
            
            ResultView(result: toTempText, measure: selectToTemp.rawValue)
        }
    }
}

#Preview {
    TemperatureView()
}
