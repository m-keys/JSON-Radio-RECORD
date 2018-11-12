//
//  PlayerViewController.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 11.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var viewAction: UIView!
    @IBOutlet weak var detailImageStation: UIImageView!
    @IBOutlet weak var detailArtistLabel: UILabel!
    @IBOutlet weak var detailSongLabel: UILabel!
    @IBOutlet weak var selectedPlayAndPause: UIButton!
    
    var station: Station?
    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageStation.downloadImage(from: "\(station!.icon_png!)")
        detailArtistLabel.text = station?.artist
        detailSongLabel.text = station?.song
        
        let url = "\(station!.stream_320!)"
        let playerItem = AVPlayerItem( url:NSURL( string:url )! as URL )
        player = AVPlayer(playerItem:playerItem)
        player.rate = 1.0;
        player.pause()
        
    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
        selectedPlayAndPause.isSelected = !selectedPlayAndPause.isSelected
        if selectedPlayAndPause.isSelected {
            player.play()
        } else {
            player.pause()
        }
    }
    
}
