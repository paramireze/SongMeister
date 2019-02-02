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
    @IBOutlet weak var textViewSongLyrics: UITextView!
    @IBOutlet weak var labelShortDescription: UILabel!
    
    var selectedSong: Song?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let selectedSong = selectedSong {
            
            let songTitle = selectedSong.title
            let songLyrics = selectedSong.lyrics
            let shortVerse = selectedSong.shortVerse
            
            labelSongTitle.text = songTitle
            textViewSongLyrics.text =  songLyrics
            addLogo()
        }
    }
    
    // dynamically add logo to top right of screen in nav bar
    func addLogo() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "navBarIcon")?.withRenderingMode(.alwaysOriginal)
        imageView.image = image
        
        let logo = UIBarButtonItem(image: image, style: UIBarButtonItem.Style.plain, target: self, action: nil)
        
        self.navigationItem.rightBarButtonItem = logo
    }
}

