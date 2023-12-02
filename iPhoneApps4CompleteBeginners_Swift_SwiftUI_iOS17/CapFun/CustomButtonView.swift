//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Youngmin Kim on 12/2/23.
//

import SwiftUI

struct CustomButtonView: View {
    var title:String
    var color:Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .bold()
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}

#Preview {
    CustomButtonView(title: "Tap Me", color: .blue)
}
