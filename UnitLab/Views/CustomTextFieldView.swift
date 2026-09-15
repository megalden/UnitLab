//
//  TextFieldView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 14.09.2026.
//

import SwiftUI

struct CustomTextFieldView<T:UnitSelectable>: View {
    
    @Binding var selection: T
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("", text: $text)
                .padding(10)
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Picker("", selection: $selection) {
                ForEach(Array(T.allCases), id: \.self) { unit in
                    Text(unit.title)
                        .tag(unit)
                }
            }
            .frame(width: 150, height: 80)
            .pickerStyle(.menu)
            .background(Color.gray.opacity(0.05))
            .tint(Color.primary)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        }
    }
}


#Preview {
    CustomTextFieldView(selection: .constant(TemperatureUnit.celsius), text: .constant("100"))
}
