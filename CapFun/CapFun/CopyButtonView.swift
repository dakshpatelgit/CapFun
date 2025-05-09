//
//  CopyButtonView.swift
//  CapFun
//
//  Created by m1 on 06/04/2025.
//

import SwiftUI

struct CopyButtonView: View {
    var body: some View {
        Text("Copy")
            .font(.body)
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(Color(.orange))
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
        
}

#Preview {
    CopyButtonView()
}
