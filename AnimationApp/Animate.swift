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
    Force: \(String(format: "%.1f", force))
    Duration: \(String(format: "%.1f", duration))
    Delay: \(String(format: "%.1f", delay))
    """
    }
    
    static func randomAnimation() -> Animate {
        Animate(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 1...2),
            delay: 0.4
        )
    }
}

