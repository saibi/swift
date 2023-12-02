//
//  ContentView.swift
//  Design Fun
//
//  Created by Youngmin Kim on 11/25/23.
//

// Make an App with an add and remove button for the counter

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("People: \(count)").font(.largeTitle).padding()
            Button("Increase") {
                count += 1
                print("Hello! \(count)")
            }.padding()
            
            Button("Decrease") {
                count -= 1
                
            }

        }
    }
}

#Preview {
    ContentView()
}
