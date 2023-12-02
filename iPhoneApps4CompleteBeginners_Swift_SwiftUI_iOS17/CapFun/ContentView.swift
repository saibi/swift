//
//  ContentView.swift
//  CapFun
//
//  Created by Youngmin Kim on 12/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var userText = "hello world"
    @State var capMode = 1
    
    var body: some View {
        VStack {
            Spacer()
            if capMode == 1  {
                Text(userText.uppercased()).font(.largeTitle).foregroundStyle(.red)

            }
            if capMode == 2  {
                Text(userText.capitalized).font(.largeTitle).foregroundStyle(.red)

            }
            if capMode == 3  {
                Text(userText.lowercased()).font(.largeTitle).foregroundStyle(.red)

            }
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
                    capMode = 1
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .red)
                }
                Button(action: {
                    print("green")
                    capMode = 2
                }) {
                    CustomButtonView(title: "First Letter", color: .green)
                }
                Button(action: {
                    print("blue")
                    capMode = 3
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

