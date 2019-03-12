//
//  Information.swift
//  Project
//
//  Created by Niccolo Diana on 09/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import Foundation
import UIKit

class Information {
    
    var title : String
    var description : String
    var sellerImage : UIImage
    
    init(title: String, description: String, sellerImage: UIImage){
        self.title = title
        self.description = description
        self.sellerImage = sellerImage
    }
    
}
