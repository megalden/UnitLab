//
//  TitleView.swift
//  UnitLab
//
//  Created by Володимир Галушка on 15.09.2026.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("UnitLab")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "gearshape")
                        .font(.title)
                        .foregroundStyle(Color.secondary)
                }
            }
            
            Text("Conver everda units, instantly.")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    TitleView()
}
