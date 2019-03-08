//
//  ViewControllerForTable.swift
//  Project
//
//  Created by Niccolo Diana on 07/03/2019.
//  Copyright © 2019 Niccolo Diana. All rights reserved.
//

import UIKit

class ViewControllerForTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var UITableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let seller = cells[indexPath.row]
        
        let seller1 = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! TableViewCell
        
        seller1.setCell(personalizzata: seller)
        
        return seller1
    }
    

    let image : UIImage = UIImage(named: "image1")!
    
    var cells : [Cella] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITableView.delegate = self
        UITableView.dataSource = self
        
        
        
        
        
        
        var cells = createCells()
        // Do any additional setup after loading the view.
    }
    
    func createCells() -> [Cella] {
        
        var appCells : [Cella] = []
        
        let Cell1 = Cella(image: image, title: "Title1", bodyMessage: "This is just a test !!")
        let Cell2 = Cella(image: image, title: "Title2", bodyMessage: "This is just a test !!")
        let Cell3 = Cella(image: image, title: "Title3", bodyMessage: "This is just a test !!")
        let Cell4 = Cella(image: image, title: "Title4", bodyMessage: "This is just a test !!")
        let Cell5 = Cella(image: image, title: "Title5", bodyMessage: "This is just a test !!")
        
        appCells.append(Cell1)
        appCells.append(Cell2)
        appCells.append(Cell3)
        appCells.append(Cell4)
        appCells.append(Cell5)
        
        return appCells
    }


    
}
