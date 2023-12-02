//
//  ContentView.swift
//  Resume
//
//  Created by Youngmin Kim on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0 ) {
            HStack {
                Image("ImageNewjeans")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(height: 100)
                    .background {
                        Circle()
                            .foregroundStyle(.blue)
                            .offset(x:10, y:10)
                    }
                    .background {
                        Circle()
                            .foregroundStyle(.red)
                            .offset(x:0, y:-10)
                    }
                    .background {
                        Circle()
                            .foregroundStyle(.yellow)
                            .offset(x:-10, y:10)
                    }

                VStack(alignment:.leading) {
                    Text("Hello, world!")
                        .font(.largeTitle)
                    Text("Hello, world!")
                        .foregroundStyle(.secondary)
                        
                    
                }
            }
            Spacer()
            Image("ImageNewjeans")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
            Spacer()
            
            Group {
                Text("Work Experience")
                    .font(.title)
                Rectangle()
                    .frame(height: 2)
                    .padding(.bottom)
                
                VStack(alignment: .leading ) {
                    HStack {
                        Text("ZappyCode")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("CEO")
                        
                    }
                }
            }
            Spacer()

            Group {
                Text("Education")
                    .font(.title)
                Rectangle()
                    .frame(height: 2)
                    .padding(.bottom)
                
                VStack(alignment: .leading ) {
                    HStack {
                        Text("Bachelor's Degree")
                    
                        Spacer()
                        Text("1994 ~ 2000")
                        
                    }
                    Text("college")
                        .foregroundStyle(.secondary)
                }
            }
            
            Spacer()
            
            
            Group {
                Text("Interests")
                    .font(.title)
                Rectangle()
                    .frame(height: 2)
                    .padding(.bottom)
                HStack {
                    VStack {
                        Text("🏀")
                            .font(.system(size: 64))
                        Text("Basketball")
                    }
                    VStack {
                        Text("🖥️")
                            .font(.system(size: 64))
                        Text("Coding")
                    }
                    VStack {
                        Text("📱")
                            .font(.largeTitle)
                        Text("iPhone")
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
