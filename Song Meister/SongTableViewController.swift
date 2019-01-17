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
        
        
        guard let soldier = Song(
            title: "A Soldier I Will Be",
            shortDescription: nil,
            lyrics: "Asshole, asshole, a soldier I will be, \n"
            + "To piss, to piss, two pistols on my knee, \n"
            + "For cunt, for cunt, for country and for queen. \n"
            + "Asshole, asshole, asshole, asshole,\n"
            + "A soldier I will be."
            )
            
            else {
                fatalError("")
        }
        
        guard let AyYiYiYi = Song(
            title: "Ay, Yi, Yi, Yi",
            shortDescription: nil,
            lyrics: "*Limerick Verse* \n"
            + "There once was a girl named Alice, \n"
            + "Who used a dynamite for a phallice. \n"
            + "They found her vagina in North Carolina,  \n"
            + "And her asshole in buckingham palace. \n\n"
            
            + "Ay, yi, yi, yi, Your sister does squat thrusts on flagpoles. \n\n"
            
            + "*Chorus* \n"
            + "So sing me another verse, \n"
            + "That’s worse than the other verse, \n"
            + "And waltz me around by my willy. \n\n"
            
            + "*More Verses* \n"
            + "A baker who loved baking bread, \n"
            + "She said she much preferred giving head. \n"
            + "But when you explode she don’t swallow your load, \n"
            + "She fills all the cream sticks instead. \n"
            + "Ay, yi, yi, yi, your father refills cream doughnuts. \n\n"
                
            + "There once was a girl named Sue, \n"
            + "Who filled up her quim with glue. \n"
            + "She said with a grin if they pay to get in, \n"
            + "They’ll pay to get out again too. \n"
            + "Ay, yi, yi, yi, I think Susie douches with draino. \n\n"
            
            + "There once was a man from Bel-Air \n"
            + "While screwing his wife on the stair \n"
            + "The banister broke so he doubled his stroke \n"
            + "And he finished her off in mid-air. \n"
            + "Ay, yi, yi, yi, Your father is so old he farts dust. \n"
            )
            
            else {
                fatalError("Well, duck farts")
        }
        
        guard let brotherHasher = Song(
            title: "Brother Hasher",
            shortDescription: nil,
            lyrics: "Here’s to brother hasher, \n"
            + "Bother hasher, brother hasher. \n"
            + "Here’s to brother hasher, \n"
            + "May he chug-a-lug. \n\n"
            
            + "He’s happy, he’s jolly, \n"
            + "He’s fucked up by golly. \n"
            + "Here’s to brother hasher, \n"
            + "May he chug-a-lug. \n\n"
            
            + "So drink motherfucker, \n"
            + "Drink motherfucker, \n"
            + "Drink motherfucker, \n"
            + "Drink motherfucker. \n\n"
            
            + "Here’s to brother hasher, \n"
            + "May he chug-a-lug."
            )
            
            else {
                fatalError("Well, duck farts")
        }
        
        guard let bullshit = Song(
            title: "Bullshit",
            shortDescription: nil,
            lyrics: "Bull-shit, bull-shit, \n"
            + "It all sounds like bullshit to me, to me! \n"
            
            + "Bull-shit, bull-shit, \n"
            + "It all sounds like bullshit to me!"
            )
            
            else {
                fatalError("Well, duck farts")
        }
        
        guard let burlesque = Song(
            title: "Burlesque Show",
            shortDescription: nil,
            lyrics: "Hi ho! Hi ho! \n"
                + "It’s off to the burlesque show, \n"
                + "We’ll sit up front to see their cunts, \n"
                + "Hi ho! Hi ho! \n\n"
                
                + "At half past eight, \n"
                + "We’ll masturbate. . . \n\n"
                
                + "We’re small on wits, \n"
                + "But big on tits. \n\n"
                
                + "We’ll drop our drawers \n"
                + "And fuck some whores. \n\n"
                
                + "At 10 ’til 8, \n"
                + "We’ll fornicate. \n"
                
                + "I paid my buck, \n"
                + "Now where’s my fuck. \n"
            )
            
            else {
                fatalError("Well, duck farts")
        }
        
        guard let dinah = Song(title: "Dinah Won't you",
                               shortDescription: "this is a short description",
                               lyrics: "Blow my horn"
            ) else { fatalError("Abort!")
        }
        
        songs += [soldier, AyYiYiYi, brotherHasher, bullshit, burlesque, dinah]
        
        
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
