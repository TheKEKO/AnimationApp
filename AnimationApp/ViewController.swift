//
//  ViewController.swift
//  AnimationApp
//
//  Created by Aleksandr F. on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationInfo: UILabel! {
        didSet {
            animationInfo.text = animation.fullinfo
        }
    }
    
    // MARK: - Private properties
    private var animation = Animate.randomAnimation()
    
    // MARK: IBActions
    @IBAction func buttonPressed(_ sender: SpringButton) {
        animationInfo.text = animation.fullinfo
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animate.randomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

