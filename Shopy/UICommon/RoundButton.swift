//
//  RoundButton.swift
//  Shopy
//
//  Created by Chanuka Dilhara on 2025-03-04.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap:(()->())?
    
    var body: some View {
        Button{
            didTap?()
        } label: {
            Text("Get Started")
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60,maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
