//
//  ContentView.swift
//  Slot Demo
//
//  Created by Arpit Choudhary on 17/07/20.
//  Copyright © 2020 Arpit Choudhary. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @State private var count = 1000
    
    var body: some View {
        ZStack{
            
            // darker rectangle
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255 , blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            // tilt rectangle
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                // heading of the app
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slot")
                        .bold()
                        .foregroundColor(.white)
                       
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    
                }.scaleEffect(2) // to make HStack little bigger
                
                 Spacer()
                
                // credit counter
                Text("Credit:" + String(self.count))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                
                 Spacer()
                
                // cards
                
                HStack{
                    
                    Image("apple")
                        .resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple")
                        .resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    
                    Image("apple")
                        .resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                }.padding(.horizontal, 10.0)
                
                 Spacer()
                
                // Button
                Button(action: {
                    self.count += 1
                }) {
                    Text("Spin")
                    .foregroundColor(.white)
                    .font(Font.system(size: 18))
                }
                .frame(minWidth: 0, maxWidth: 256)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .background(Color.red)
                .cornerRadius(20)
                
                 Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
