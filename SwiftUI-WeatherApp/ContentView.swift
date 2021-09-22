//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Mostafa Ayman on 18/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
           
            BackGroundView(topColor: isNight ? Color.black : Color.blue,
                           bottomColor: isNight ? .gray :  Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Shbien Elkom")
                
                VStack(spacing : 12){
                    MainWeatherStatusView(image: isNight ? "moon.stars.fill" :  "cloud.sun.fill", tempreture: 75)
                    
                }//Image tempreture VSatck
                .padding(.bottom , 40)
                
                HStack(spacing: 26){
                WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", tempreture: 74)
                WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", tempreture:88 )
                WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", tempreture: 55)
                WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", tempreture: 60)
                WeatherDayView(dayOfWeek: "SAT", imageName: "snow", tempreture: 25)
                }
                Spacer()
                Button{
                    isNight.toggle()
                }label: {
                    weatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }

                Spacer()
            }//VStack
        }//ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct WeatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var tempreture:Int
    
    
    var body: some View {
        VStack(alignment : .leading){
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName:  imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
            
            Text("\(tempreture)º")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct BackGroundView: View {
    var topColor : Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .foregroundColor(.white)
            .font(.system(size: 32, weight: .medium, design: .default))
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var image:String
    var tempreture:Int
    var body: some View {
        VStack{
            Image(systemName: image )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .top)
            Text("\(tempreture)°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium, design: .default))
        }
        .padding(.bottom , 40)
    }
}


