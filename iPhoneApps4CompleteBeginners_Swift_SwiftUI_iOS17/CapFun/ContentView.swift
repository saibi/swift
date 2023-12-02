//
//  ContentView.swift
//  CapFun
//
//  Created by Youngmin Kim on 12/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var userText = "hello world"
    
    var body: some View {
        VStack {
            Spacer()
            Text(userText).font(.largeTitle).foregroundStyle(.red)

            Spacer()
            Button(action: {
                print("orange")
                
                UIPasteboard.general.string = userText
            } ) {
                CustomButtonView(title:"Copy", color: .orange)
            }
            HStack {
                Button(action: {
                    print("red")
                    userText = userText.uppercased()
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .red)
                }
                Button(action: {
                    print("green")
                    userText = userText.capitalized
                }) {
                    CustomButtonView(title: "First Letter", color: .green)
                }
                Button(action: {
                    print("blue")
                    userText = userText.lowercased()
                }) {
                    CustomButtonView(title: "lowercase", color: .blue)
                }
             
            }
            .padding()

            TextField("Enter text here", text: $userText).padding(.vertical)
        }
    }
}

#Preview {
    ContentView()
}

