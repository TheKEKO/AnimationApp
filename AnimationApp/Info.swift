//
//  Info.swift
//  AnimationApp
//
//  Created by Aleksandr F. on 05.04.2022.
//

import Foundation

struct Person {
    
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    var fullinfo: String {
        "\(preset) \(curve)"
    }
}
