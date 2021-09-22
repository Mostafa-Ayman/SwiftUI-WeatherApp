//
//  WeatherButton.swift
//  SwiftUI-WeatherApp
//
//  Created by Mostafa Ayman on 22/09/2021.
//

import SwiftUI
struct weatherButton :View {
    var title : String
    var textColor :Color
    var backgroundColor : Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
