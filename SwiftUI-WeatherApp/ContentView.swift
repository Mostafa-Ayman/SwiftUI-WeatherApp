//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Mostafa Ayman on 18/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
           
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Shbien Elkom")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                
                VStack(spacing : 12){
                    Image(systemName: "cloud.sun.fill" )
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 50, alignment: .top)
                    
                    Text("76°")
                        .foregroundColor(.white)
                        .font(.system(size: 22, weight: .medium, design: .default))
                    
                }//Image tempreture VSatck
                

                Spacer()
            }//VStack
            VStack(alignment : .leading){
                Text("Fri")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    
                Image(systemName:  "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    
            }
            
            

        }//ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
