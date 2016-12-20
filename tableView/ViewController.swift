//
//  ViewController.swift
//  tableView
//
//  Created by STROBEL, JOSEPH on 12/14/16.
//  Copyright © 2016 STROBEL, JOSEPH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let people = [
        ("Adam Ford", "New York"),
        ("Joe Strobel", "Alabama"),
        ("Carter West", "Texas")
    ]
    
    let videos = [
    ("Basketball", "84 Videos"),
    ("Soccer", "28 Videos"),
    ("Swimming", "54 Videos"),
    ("Football", "31 Videos"),
    ("Baseball", "2 Videos")
    ]
    
    //how many sections are in the view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //table view will return int for how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return people.count
        }else{
            return videos.count
        }
        
    }
    
    //what is in the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0{
            var (personName, personLocation) = people[indexPath.row]
            cell.textLabel?.text = personName
        }else{
            var (videoTitle, videoDesc) = videos[indexPath.row]
            cell.textLabel?.text = videoTitle
        }
        return cell
    }
    
    //Give each section a name
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "People"
        }else{
            return "Videos"
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

