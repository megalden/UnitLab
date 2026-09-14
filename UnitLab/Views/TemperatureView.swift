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
            
            VStack(alignment: .leading) {
                Text("Result")
                
                HStack {
                    Text("0.0")
                        
                    Spacer()
                    
                    Text(selectToTemp.rawValue)
                }
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .foregroundStyle(Color.blue)
                .padding(10)
                .background(Color.blue.opacity(0.1))
                .clipShape(
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                    
                )
                
            }
        }
    }
}

#Preview {
    TemperatureView()
}
