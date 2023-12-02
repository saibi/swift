//
//  ContentView.swift
//  Design Fun
//
//  Created by Youngmin Kim on 11/25/23.
//

// Make an HStack with two circles and a rectangle

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    Text("🎮")
                        .font(.largeTitle)
                    Text("Sold Out")
                        .foregroundStyle(.red)
                        .rotationEffect(.degrees(-15))

                }
                Spacer()
                Text("🛳️")
                    .font(.largeTitle)
                Spacer()
                Text("📱")
                    .font(.largeTitle)
                Spacer()
            }
            Spacer()
            Text("🏪")
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
//Text("Tap me")
//    .font(.largeTitle)
//    .padding()
//    .background(Color.green)
//    .foregroundStyle(.white)
//    .clipShape(RoundedRectangle(cornerRadius: 20))
//    .grayscale(0.3)
