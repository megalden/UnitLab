//
//  LengthView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct LengthView: View {
     
    @State private var viewModel = LengthViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("From")
                
                CustomTextFieldView(selection: $viewModel.fromUnit, text: $viewModel.fromText)
            }
            
            ReverseButtonView(reverse:  viewModel.isReversed)
            
            VStack(alignment: .leading) {
                Text("To")
                
                CustomTextFieldView(selection: $viewModel.toUnit, text: $viewModel.toText)
            }
            
            ResultView(result: viewModel.toText, measure: viewModel.toUnit.title)
        }
    }
}

#Preview {
    LengthView()
}
