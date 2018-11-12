//
//  ViewController + UITableViewDataSource,UITableViewDelegate.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 11.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let station = stations[indexPath.row]
        
        cell.imageStation?.downloadImage(from: "\(station.icon_png!)")
        cell.stationNameLabel.text = station.title
        cell.artistNameLabel.text = station.artist
        cell.songNameLabel.text = station.song
        
        return cell
    }
    
}
