//
//  ViewControllerDisplay.swift
//  Project
//
//  Created by Niccolo Diana on 09/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import UIKit

class ViewControllerDisplay: UIViewController {

    @IBOutlet weak var titleOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var descriptionOutlet: UILabel!
    
    var dataPassed : Information?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
        // Do any additional setup after loading the view.
        
    }
    
    func setData() {
        imageOutlet.image = dataPassed?.sellerImage ?? .none
        titleOutlet.text = dataPassed?.title ?? "Fail"
        descriptionOutlet.text = dataPassed?.description ?? "Fail"
    }

}
