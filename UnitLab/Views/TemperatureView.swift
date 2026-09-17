//
//  TemperatureView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 14.09.2026.
//

import SwiftUI

struct TemperatureView: View {
    
    @State private var viewModel = TemperatureViewModel()
        
    var body: some View {
        @Bindable var viewModel = viewModel
        
        
        VStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("From")
                
                CustomTextFieldView(selection: $viewModel.fromUnit, text: $viewModel.fromText)
            }
            
            ReverseButtonView(firstElement: $viewModel.fromText, secondElement: $viewModel.toText)
            
            VStack(alignment: .leading) {
                Text("To")
                
                CustomTextFieldView(selection: $viewModel.toUnit, text: $viewModel.toText)
            }
            
            ResultView(result: viewModel.toText, measure: viewModel.toUnit.rawValue)
        }
    }
}

#Preview {
    TemperatureView()
}
