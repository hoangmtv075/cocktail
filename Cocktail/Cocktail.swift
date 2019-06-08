//
//  Cocktail.swift
//  Animation
//
//  Created by Jack Ily on 27/05/2019.
//  Copyright © 2019 Jack Ily. All rights reserved.
//

import UIKit

struct Cocktail {
    
    let name: String
    let description: String
    
    static func sharedInstance() -> [Cocktail] {
        return [
            Cocktail(name: "Chrome", description: "Applies a preconfigured set of effects that imitate vintage photography film with exaggerated color."),
            Cocktail(name: "Fade", description: "Applies a preconfigured set of effects that imitate vintage photography film with diminished color."),
            Cocktail(name: "Instant", description: "Applies a preconfigured set of effects that imitate vintage photography film with distorted colors."),
            Cocktail(name: "Mono", description: "Applies a preconfigured set of effects that imitate black-and-white photography film with low contrast."),
            Cocktail(name: "Noir", description: "Applies a preconfigured set of effects that imitate black-and-white photography film with exaggerated contrast."),
            Cocktail(name: "Process", description: "Applies a preconfigured set of effects that imitate vintage photography film with emphasized cool colors."),
            Cocktail(name: "Tonal", description: "Applies a preconfigured set of effects that imitate black-and-white photography film without significantly altering contrast."),
            Cocktail(name: "Transfer", description: "Applies a preconfigured set of effects that imitate vintage photography film with emphasized warm colors."),
            Cocktail(name: "Tone", description: "Maps the colors of an image to various shades of brown."),
            Cocktail(name: "Vignette", description: "Reduces the brightness of an image at the periphery.")
        ]
    }
}
