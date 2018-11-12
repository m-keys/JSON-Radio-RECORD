//
//  Station.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 11.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import Foundation

struct Station: Codable {
    var title: String?
    var artist: String?
    var song: String?
    var icon: String?
    var icon_png: String?
    var stream: String?
    var stream_128: String?
    var stream_320: String?
}
