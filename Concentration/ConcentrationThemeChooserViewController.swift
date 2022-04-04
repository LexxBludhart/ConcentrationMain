//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Rhett Levitz on 4/4/22.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Sports" : "⚽️🏀🏈⚾️🎾🏐🏓🎱🎳⛳️🥊⛸",
        "Animals" : "🐱🐶🐹🦊🐷🐮🐸🐥🦎🐍🦄🦜",
        "Faces" : "🥹😎🥸🫥🥶😵‍💫🥳😇😂😶‍🌫️🙂😶",
    ]
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
                if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                    if let cvc = segue.destination as? ConcentrationViewController {
                        cvc.theme = theme
                    }
                    }
                }
            }
}

