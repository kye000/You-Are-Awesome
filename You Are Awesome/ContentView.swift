//
//  ContentView.swift
//  You Are Awesome
//
//  Created by SUMAGANG, KYLE RUSSLIE on 11/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1 //lastMessageNumber whill never be 1
    @State private var lastImageNumber = -1
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
                .animation(.default, value: imageName)
            
    
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!" ,
                                 "When the Genius Bar Needs Help, They Call You!", "You Are Great!", "You Are Fantastic!", "Fabulous? That's You!", "You Make Me Smile!"]
                
                //generate a random messageNumber to use an index number
                //if messageNumber == lastMessageNumber
                
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                           
                
            
                
               // imageName = "image\(Int.random(in: 0...9))"
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
            }
        
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
