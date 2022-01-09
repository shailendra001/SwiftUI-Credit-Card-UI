//
//  WeatherButton.swift
//  SwiftUIApp
//
//  Created by shailendra singh on 08/01/22.
//

import SwiftUI

//#MARK: WeatherButton
struct WeatherButton: View {
    
    var title:String
    @Binding var isNight:Bool
    var body: some View {
       
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .background(isNight ? Color.black : Color.white)
            .cornerRadius(10)
            .foregroundColor(isNight ? Color.white : Color.blue)
            .font(.system(size: 20, weight: .medium, design: .default))
    }
}
