//
//  ViewController.swift
//  Song Meister
//
//  Created by Ramirez Paul E on 12/7/18.
//  Copyright © 2018 Ramirez Paul E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSongTitle: UILabel!
    
    var selectedSong: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let selectedSong = selectedSong {
            
            let songTitle = selectedSong.title
            
            labelSongTitle.text = songTitle
            
        }
    }
}

