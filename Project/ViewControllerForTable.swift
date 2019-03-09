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
    
    
    let image : UIImage = UIImage(named: "image1")!
    
    var cells : [Cella] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //states that this class is the delegate of the data and the object tableView within this VC
        UITableView.delegate = self
        UITableView.dataSource = self
        
        //force sets each of the the tableView rows to have a height of 200
        UITableView.rowHeight = 200
        
        cells = createCells()
        
        // Do any additional setup after loading the view.
    }
    
    //Function hardcoded that creates the 5 cells to test the app
    func createCells() -> [Cella] {
        
        var appCells : [Cella] = []
        
        let Cell1 = Cella(image: image, title: "Title1", bodyMessage: "This is just a test 1!!")
        let Cell2 = Cella(image: image, title: "Title2", bodyMessage: "This is just a test 2!!")
        let Cell3 = Cella(image: image, title: "Title3", bodyMessage: "This is just a test 3!!")
        let Cell4 = Cella(image: image, title: "Title4", bodyMessage: "This is just a test 4!!")
        let Cell5 = Cella(image: image, title: "Title5", bodyMessage: "This is just a test 5!!")
        
        appCells.append(Cell1)
        appCells.append(Cell2)
        appCells.append(Cell3)
        appCells.append(Cell4)
        appCells.append(Cell5)
        
        return appCells
    }

//MARK - Table view settings
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //meaning my UITableView is going to have cells.count different rows
        return cells.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Gets each item singularly in order from the dictionary of cells
        let cellFormat = cells[indexPath.row]
        
        //You need to do this Nib thing because you created a xib file
        
        let nib = UINib(nibName: String(describing: TableViewCell.self), bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "customCell")
    
        // Says that it is going to create a reusable cell with the identifier from the XIB file and it is going to use the class TableViewCell to access its properties
        let cellObject = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableViewCell
        
        //Creates and assigns the values from the item in the dictionary to the CellFormat for them to be displayed in the custom cell
        
        cellObject.setCell(cellFormatTaken: cellFormat)
        
        // returns the final Cell Item
        
        return cellObject
        
    }
    
}
