//
//  UIImageView.swift
//  JSON Radio RECORD
//
//  Created by Александр Макаров on 12.11.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func downloadImage(from url: String) {
        let urlRequest = URLRequest(url: URL(string: url)!)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard error == nil else { return }
            guard data != nil else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }}.resume()
    }
}
