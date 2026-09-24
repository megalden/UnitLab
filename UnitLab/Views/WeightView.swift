//
//  WeightView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 24.09.2026.
//

import SwiftUI

struct WeightView: View {
    
    @State private var viewModel = WeightViewModel()
        
    var body: some View {
        @Bindable var viewModel = viewModel
        
        
        VStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text("From")
                
                CustomTextFieldView(selection: $viewModel.fromUnit, text: $viewModel.fromText)
            }
            
            ReverseButtonView(reverse: viewModel.isReversed)
            
            VStack(alignment: .leading) {
                Text("To")
                
                CustomTextFieldView(selection: $viewModel.toUnit, text: $viewModel.toText)
            }
            
            ResultView(result: viewModel.toText, measure: viewModel.toUnit.title)
        }
    }
}

#Preview {
    WeightView()
}
