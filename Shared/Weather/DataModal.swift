//
//  DataModal.swift
//  SwiftUIApp
//
//  Created by shailendra singh on 08/01/22.
//

import Foundation


struct videoData:Identifiable,Codable{
    
    let id:UUID
    let imageName:String
    let title:String
    let description:String
    let viewCount:Int
    
}
