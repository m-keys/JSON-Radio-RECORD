//
//  ViewController.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 11.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var stations = [Station]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseJSON()
    }
    
    func parseJSON() {
        let urlJSON = URL(string: "http://www.radiorecord.ru/radioapi/stations/")!
        
        let task = URLSession.shared.dataTask(with: urlJSON) { data,_,_ in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                if let artist = try? jsonDecoder.decode(Stations.self, from: data) {
                    self.stations = artist.result
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
        }
        task.resume()
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PlayerViewController,
            let indexPaths = self.tableView?.indexPathsForSelectedRows,
            let indexPath = indexPaths.first {
            let item = stations[indexPath.row]
            vc.station = item
        }
    }
}
