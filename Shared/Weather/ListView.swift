//
//  ListView.swift
//  SwiftUIApp
//
//  Created by shailendra singh on 08/01/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
          
        NavigationView{
            List(0..<10){ item in
             
                NavigationLink {
                    ContentView()
                } label: {
                    Image(systemName: "cloud.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame( height: 70)
                                    .cornerRadius(8)
                                    .padding(.vertical,4)
                           
                    VStack(alignment: .leading, spacing: 5){
                                Text("I am average developer")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.semibold)
                                    .minimumScaleFactor(1)
                                lineLimit(2)
                                   
                                
                                Text("Price $40")
                                    .foregroundColor(Color.black)
                                    .font(.subheadline)
                            }
                }
            }
            .navigationTitle("ListView")
        }
      
    }
     
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
