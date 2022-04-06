//
//  DataManager.swift
//  AnimationApp
//
//  Created by Aleksandr F. on 06.04.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}

