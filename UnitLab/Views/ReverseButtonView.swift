//
//  ReverseButtonView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct ReverseButtonView: View {
    
    var reverse: () -> Void
    
    var body: some View {
        Button {
            reverse()
            
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

