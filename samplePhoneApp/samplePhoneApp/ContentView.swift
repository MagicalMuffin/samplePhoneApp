//
//  ContentView.swift
//  samplePhoneApp
//
//  Created by StudentAM on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
   
    var body: some View {
        VStack {
            Text("Click the buttons below to change the number")
            Text("\(count)")
            HStack {
                Button(action: {
                    if count != 50 {
                        count += 1
                    }
                }, label:{
                    Text("Increment")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                })
                Button(action: {
                    if count != 0 {
                        count -= 1
                    }
                }, label:{
                    Text("Decrement")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                })
            }
            
            Button("Restart", action: restartCounter)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
            
            .padding()
        }
    }
    func restartCounter(){
        count = 0
    }
}

#Preview {
    ContentView()
}
