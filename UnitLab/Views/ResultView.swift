//
//  ResultView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct ResultView: View {
    let result: String
    let measure: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Result")
            
            HStack {
                Text(result)
                    
                Spacer()
                
                Text(measure)
            }
            .font(.system(size: 40, weight: .bold, design: .rounded))
            .foregroundStyle(Color.blue)
            .padding(20)
            .background(Color.blue.opacity(0.1))
            .clipShape(
                RoundedRectangle(cornerRadius: 10, style: .circular)
                
            )
        }
    }
}

#Preview {
    ResultView(result: "23", measure: "°C")
}
