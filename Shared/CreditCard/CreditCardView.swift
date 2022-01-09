//
//  CreditCardView.swift
//  SwiftUIApp (iOS)
//
//  Created by shailendra singh on 09/01/22.
//

import SwiftUI

struct CreditCardView: View {
    @State private var isBG = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isBG)
            
            VStack{
                HStack(){
                    
                    Text("Shailendra Singh")
                        .font(.title.weight(.regular))
                        .padding()
                    
                    Spacer()
                    
                    Image("creditcard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                }
                
                Text("443567  897654  8976")
                    .padding()
                    .font(.title.weight(.bold))
                    .frame( alignment: .center)
              
                HStack{
                    
                 Text("21/2025")
                        .padding()
                        .font(.body.weight(.regular))
                    Spacer()
                    
                    Image("card")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                }
                Spacer()
            }
            .frame(width: 400, height: 230)
            .background(
                LinearGradient(colors:[.white,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
           // .overlay(RoundedRectangle(cornerRadius: 10)
                     //   .stroke(Color.yellow.opacity(0.5),lineWidth: 5))
            .cornerRadius(10)
            .shadow(radius: 8)
           
        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
