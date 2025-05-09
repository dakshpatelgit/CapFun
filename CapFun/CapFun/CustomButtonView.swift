//
//  CustomButtonView.swift
//  CapFun
//
//  Created by m1 on 27/03/2025.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .font(.callout)
            .bold()
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 10)
            
    }
}

#Preview {
    CustomButtonView(title: "Tap me", color: .red)
}
