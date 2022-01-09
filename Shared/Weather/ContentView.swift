//
//  ContentView.swift
//  Shared
//
//  Created by shailendra singh on 07/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight:Bool = false
    
    var body: some View {
        ZStack{
           
            BackgroundView(isNight: $isNight)
            
           
            VStack{
                cityTextView(cityName: "Cupertino,CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 72)
                HStack(spacing:25){
                    WeatherDayView(temperature: 15, imageName: "cloud.rain", dayOfWeek: "MON")
                    WeatherDayView(temperature: 18, imageName: "sun.max.fill", dayOfWeek: "TUE")
                    WeatherDayView(temperature: 45, imageName: "wind.snow", dayOfWeek: "WED")
                    WeatherDayView(temperature: 55, imageName: "cloud.rain", dayOfWeek: "THUR")
                    WeatherDayView(temperature: 35, imageName: "cloud.rain", dayOfWeek: "FRI")
                    WeatherDayView(temperature: 25, imageName: "cloud.rain", dayOfWeek: "SAT")
                }
                Spacer()
                Button {
                    if isNight == true {
                        isNight = false
                    }else{
                        isNight = true
                    }
                    print("tapped")
                  
                } label: {
                    WeatherButton(title: "Change Day Time", isNight: $isNight)
                   
                }
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


//#MARK: Weather Day View
struct WeatherDayView: View {
    
    var temperature:Int
    var imageName:String
    var dayOfWeek:String
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
            
            Text("\(temperature)")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium, design: .default))
        }
    }
}
//#MARK: BackgroundView

struct BackgroundView: View {
    
    @Binding var isNight:Bool
    var body: some View {
        LinearGradient(colors: isNight ? [.black,.white] : [.blue,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
//#MARK: cityTextView
struct cityTextView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
//#MARK: MainWeatherStatusView
struct MainWeatherStatusView: View {
    var imageName:String
    var temperature:Int
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium))
            
        }
        .padding(.bottom,40)
    }
}
