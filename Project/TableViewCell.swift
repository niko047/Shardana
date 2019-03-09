//
//  TableViewCell.swift
//  Project
//
//  Created by Niccolo Diana on 07/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var bodyText: UILabel!
    @IBOutlet weak var CellImage: UIImageView!
    
    
    func setCell(cellFormatTaken: Cella) {
        
        title.text = cellFormatTaken.title
        bodyText.text = cellFormatTaken.bodyMessage
        CellImage.image = cellFormatTaken.image
        
    }
}

    
