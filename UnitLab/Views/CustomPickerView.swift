

import SwiftUI

struct CustomPickerView: View {
    @Binding var selection: ConvertValue
    
    var body: some View {
        HStack() {
            ForEach(ConvertValue.allCases, id: \.self) { index in
                Text(index.rawValue)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(selection == index ? .white : .primary)
                    .background {
                        if index == selection {
                            Color.blue
                        }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .onTapGesture {
                        withAnimation {
                            selection = index
                        }
                    }
            }
        }
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}



#Preview {
    CustomPickerView(selection: .constant(.temperature))
}
