//
//  LineTextField.swift
//  Shopy
//
//  Created by Chanuka Dilhara on 2025-03-05.
//

import SwiftUI

struct LineTextField: View {
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack{
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            TextField(placeholder, text: $txt)
                    .keyboardType(keyboardType)
                    .disableAutocorrection(true)
                    .frame(height: 40)
            
            Divider()
        }
    }
}

struct LineSecureField: View {
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    
    var body: some View {
        VStack{
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if (isShowPassword){
                TextField(placeholder, text: $txt)
                    .disableAutocorrection(true)
                    .modifier(showButton(isShow: $isShowPassword))
                    .frame(height: 40)
            } else{
                SecureField(placeholder, text: $txt)
                    .modifier(showButton(isShow: $isShowPassword))
                    .frame(height: 40)
            }
            
            Divider()
        }
    }
}

#Preview {
    @State var sampleText: String = ""
    LineTextField(txt: $sampleText)
        .padding(20)
}
