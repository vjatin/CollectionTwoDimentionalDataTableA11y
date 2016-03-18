//
//  ViewController.swift
//  Collection
//
//  Created by Jatin K Vaishnav on 8/4/15.
//  Copyright (c) 2015 Jatin K Vaishnav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var tableData: [String] = ["Name", "Age", "Birthday", "Jackie", "5", "April 5", "Beth", "8", "January 1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: ColVwCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ColVwCell
        cell.lblcell.text = tableData[indexPath.row]
        
        //set the data table's column header, row header & data cell's association with headers
        if indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 2
        {
            cell.lblcell.accessibilityLabel = tableData[indexPath.row] + "Column "
            cell.lblcell.accessibilityTraits = UIAccessibilityTraitHeader
            cell.lblcell.font = UIFont.boldSystemFontOfSize(17)
        }
        else if indexPath.row == 3 || indexPath.row == 6
        {
            //cell.lblcell.accessibilityLabel = "Name " + tableData[indexPath.row] + "Row "
            cell.lblcell.accessibilityLabel = tableData[0] + tableData[indexPath.row] + "Row "
            cell.lblcell.accessibilityTraits = UIAccessibilityTraitHeader
            cell.lblcell.font = UIFont.boldSystemFontOfSize(17)
        }
        else if indexPath.row == 4
        {
            cell.lblcell.accessibilityLabel = tableData[1] + tableData[3] + tableData[indexPath.row]
        }
        else if indexPath.row == 5
        {
            cell.lblcell.accessibilityLabel = tableData[2] + tableData[3] + tableData[indexPath.row]
        }
        else if indexPath.row == 7
        {
            cell.lblcell.accessibilityLabel = tableData[1] + tableData[6] + tableData[indexPath.row]
        }
        else if indexPath.row == 8
        {
            cell.lblcell.accessibilityLabel = tableData[2] + tableData[6] + tableData[indexPath.row]
        }

        
        
        return cell
    }

}

