//
//  LengthView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct LengthView: View {
    @State private var fromLengthText: String = "0"
    @State private var toLengthText: String = "0"
    @State private var selectFromLength: LengthUnit = .meter
    @State private var selectToTempLength: LengthUnit = .mile
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("From")
                
                CustomTextFieldView(selection: $selectFromLength, text: $fromLengthText)
            }
            
            ReverseButtonView(firstElement: $fromLengthText, secondElement: $toLengthText)
            
            VStack(alignment: .leading) {
                Text("To")
                
                CustomTextFieldView(selection: $selectToTempLength, text: $toLengthText)
            }
            
            ResultView(result: toLengthText, measure: selectToTempLength.rawValue)
        }
    }
}

#Preview {
    LengthView()
}
