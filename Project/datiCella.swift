//
//  datiCella.swift
//  Project
//
//  Created by Niccolo Diana on 07/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import Foundation
import UIKit

class Cella {
    let image : UIImage
    let title : String
    let bodyMessage : String
    
    init(image: UIImage, title : String, bodyMessage : String){
        self.image = image
        self.title = title
        self.bodyMessage = bodyMessage
    }
}
