//
//  SongTableViewController.swift
//  Song Meister
//
//  Created by Ramirez Paul E on 12/7/18.
//  Copyright © 2018 Ramirez Paul E. All rights reserved.
//

import UIKit
import os.log

class SongTableViewController: UITableViewController {
    
    var songs = [Song]()
    let cellIdentifier = "SongTableViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDefaultSongs()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SongTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ContrastAgentTableViewCell.")
        }
        
        let song = songs[indexPath.row]
        cell.lblSongTitle.text = song.title
        // Return the configured cell
        return cell
    }
    
    private func loadDefaultSongs() {
        songs = [Song]()
        
        
        guard let donnie = Song(
            title: "donnie - the retard")
            else {
                fatalError("")
        }
        
        guard let jack = Song(
            title: "jack")
            else {
                fatalError("")
        }
        
        guard let bill = Song(
            title: "bill")
            else {
                fatalError("")
        }
        
        guard let xulu = Song(
            title: "xulu")
            else {
                fatalError("")
        }
        
        
        
        songs += [donnie, jack, bill, xulu]
        
        
    }
    
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let songViewController = segue.destination as? ViewController else {
            fatalError("Unexpected Destination: \(segue.destination)")
        }
        
        guard let selectedSongTableViewCell = sender as? SongTableViewCell else {
            fatalError("Unexpected sender: \(sender)")
        }
        
        guard let indexPath = tableView.indexPath(for: selectedSongTableViewCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let selectedSong = songs[indexPath.row]
        songViewController.selectedSong = selectedSong
    }
}
