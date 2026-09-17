//
//  ReverseButtonView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct ReverseButtonView: View {
    
    @Binding var firstElement: String
    @Binding var secondElement: String
    
    var body: some View {
        Button {
            let reverse: String = firstElement
            firstElement = secondElement
            secondElement = reverse
            
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
    }
}

#Preview {
    ReverseButtonView(firstElement: .constant("20"), secondElement: .constant("40"))
}
