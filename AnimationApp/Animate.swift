//
//  Animate.swift
//  AnimationApp
//
//  Created by Aleksandr F. on 05.04.2022.
//

import Foundation

struct Animate {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var fullinfo: String {
    """
    Preset: \(preset)
    Curve: \(curve)
    Force: \(String(format: "%.02f", force))
    Duration: \(String(format: "%.02f", duration))
    Delay: \(String(format: "%.02f", delay))
    """
    }
    
    static func randomAnimation() -> Animate {
        Animate(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}

