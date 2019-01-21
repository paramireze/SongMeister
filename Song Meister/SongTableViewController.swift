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
        
        
        guard let soldier = Song(
            title: "A Soldier I Will Be",
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
            lyrics: "*Limerick Verse* \n\n"
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
            lyrics: "*Tune: Hi Ho, Hi Ho, It’s Off to Work We Go* \n\n"
                + "Hi ho! Hi ho! \n"
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
                               lyrics: "Dinah won’t you blow me, \n"
            + "Dinah won’t you blow me, \n"
            + "Dinah won’t you blow my horn? \n\n"
            
            + "Dinah won’t you blow me, \n"
            + "Dinah won’t you blow me, \n"
            + "Dinah won’t you blow my horn?"
            
            ) else { fatalError("Abort!")
        }
        
        guard let doYourBallsHangLow = Song(title: "Do Your Balls Hang Low?",
                                            lyrics: "*Tune: Do Your Ears Hang Low?* \n\n"
            + "Do your balls hang low? \n"
            + "Do they swing to and fro? \n"
            + "Can you tie them in a knot? \n"
            + "Can you tie them in a bow? \n"
            + "Can you throw them over your shoulder, \n"
            + "Like a Continental soldier? \n"
            + "Can you do the double shuffle, \n"
            + "When your balls hang low?"
            
            ) else { fatalError("Abort!")
        }
        
        guard let doYourBallsHangAndTits = Song(title: "Do Your Balls Hang Low?",
                                                lyrics: "*Tune: Do Your Ears Hang Low?* \n\n"
            + "Do your balls hang low? \n"
            + "Do they swing to and fro? \n"
            + "Can you tie them in a knot? \n"
            + "Can you tie them in a bow? \n"
            + "Can you throw them over your shoulder, \n"
            + "Like a regimental soldier? \n"
            + "Do your balls hang low? \n\n"
            
            + "Do your tits hang low? \n"
            + "Do they wobble to and fro? \n"
            + "Can you tie them in a knot? \n"
            + "Can you tie them in a bow? \n"
            + "Do you get a painful feeling, \n"
            + "When you throw them at the ceiling \n"
            + "Do your tits hang low?"
            
            ) else { fatalError("Abort!")
        }
        
        guard let dosABeer = Song(title: "Dos, a Beer",
                                  lyrics: "*Tune: Do-Re-Mi* \n\n"
            
            + "Dos, a beer, a Mexican beer, \n"
            + "Ray, the guy who buys me beer, \n"
            + "Me, the guy, who drinks the beer, \n"
            + "Far, a long-long way to run, \n"
            + "So, I think I’ll have a beer! \n"
            + "La…aats and lots of beer! \n"
            + "Tea? No thanks I’ll have a beer, \n"
            + "And that brings us back to Dos…"
            
            ) else { fatalError("Abort!")
        }
        
        guard let doseOfClap = Song(title: "Dose of Clap",
                                    lyrics: "*Tune: He's Got the Whole World, in His Hands* \n\n"
            + "He’s got a dose of clap on his dick, \n"
            + "He’s got a dose of clap on his dick, \n"
            + "He’s got a dose of clap on his dick, \n"
            + "And all it does is go drip, drip, drip."
            
            ) else { fatalError("Abort!")
        }
        
        guard let downDownSong = Song(title: "Down Down Song",
                                  lyrics: "This is your Down-Down song, \n"
            + "It isn’t very long . \n"
            + "Drink it down, down, down down…. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let elCamino = Song(title: "El Camino",
                                  lyrics: "*Chorus*\n"
            + "El, Camino… El, El, Camino. \n\n"
            
            + "*Verse* \n"
            + "The front is like a car and the back is like a truck. \n"
            + "The front is where you drive and the back is where you \n\n"
            
            + "*Repeat Chorus* \n\n"
            
            + "*More Verses* \n"
            + "She didn’t have no weed and she couldn’t pay for gas. \n"
            + "Nobody rides for free so I stuck it in her… \n\n"
            
            + "You can take it to the brothel, you can take it to the store. \n"
            + "In the front you put your beer, in the back you put your… \n"
            
            + "Put the guys in the back and the girls in the front. \n"
            + "Put their’s legs up on the dash so you can eat their… \n\n"
            
            + "You can take out classy ladies, you can take out dirty sluts. \n"
            + "In the front you kiss them softly, in the back you do their… \n\n"
            
            + "I read her a sweet poem, I think it made her cry. \n"
            + "I couldn’t really tell cause I squirted in her… \n\n"
            
            + "The front is where you fuck and the back is where you fuck. \n"
            + "The front is where you fuck and the back is where you…"
            
            ) else { fatalError("Abort!")
        }
        
        guard let frontHoleBackHole = Song(title: "Front Hole Back Hole",
                                           lyrics: "Tune: Loch Lomond \n\n"
            + "You take the front hole, \n"
            + "And I’ll take the back hole. \n"
            + "We’ll both take turns giving her wiener. \n\n"
            
            + "Oh me and my true love \n"
            + "Have never been the same, \n"
            + "Since I shared her with my next door neighbor. \n\n"
            
            + "Credit: Cock Burgler, MH3"
            
            ) else { fatalError("Abort!")
        }
        
        guard let fuckADuck = Song(title: "Fuck a Duck",
                                   lyrics: "Tune: Do-Re-Mi \n\n"
            + "Fuck a duck, a female duck \n"
            + "Screw a baby kangaroo. \n"
            + "Finger-bang an orangutan, \n"
            + "Let an elephant do you. \n\n"
            
            + "Feel the penis of an eel, \n"
            + "Whack! The asshole of a yak, \n"
            + "Masturbate with a gnu, \n"
            + "And that will bring us back to… \n\n"
            
            + "Fuck."
            
            ) else { fatalError("Abort!")
        }
        
        guard let gapingHugeVagina = Song(title: "Gaping Huge Vagina",
                                   lyrics: "Tune: \"Ring of Fire\" Johnny Cash \n\n"
            + "I fell in to a gaping huge vagina. \n"
            + "I went down, down down,\n"
            + "All the way to fucking China.\n"
            + "It burns, burns, burns, that huge vagina.\n"
            + "That huge vagina."
            
            ) else { fatalError("Abort!")
        }
        
        guard let happyBirthdaySongs = Song(title: "Happy Birthday Songs",
                                            lyrics: "Happy birthday, fuck you, \n"
            + "Happy birthday, fuck you, \n"
            + "Happy birthday, you asshole, \n"
            + "Happy birthday, fuck you. \n\n"
            
            + "——————————— \n\n"
            
            + "Happy birthday to you, \n"
            + "Happy birthday to you, \n"
            + "You look like a hasher, \n"
            + "And you smell like one too. \n\n"
            
            + "——————————— \n\n"
            
            + "May you live one hundred years \n"
            + "May you drink one million beers \n"
            + "Get plastered you bastard \n"
            + "Happy Birthday to you. \n\n"
            
            + "——————————— \n\n"
            
            + "This is your birthday song, \n"
            + "It isn’t very long . . . \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let hasherMan = Song(title: "Hasher Man",
                                   lyrics: "It’s five O’clock on a Saturday \n"
            + "The regular crowd gathers near \n"
            + "There’s an old man standing next to me \n"
            + "White with flour and drinking a beer \n\n"
            
            + "He says son can you set me a shitty trail \n"
            + "I’m not really sure how it goes \n"
            + "But there’s shiggy and drink \n"
            + "And a beer check, I think \n"
            + "And no one is wearing their clothes \n\n"
            
            + "Set us a trail your the Hasher man \n"
            + "Set us a trail tonight \n"
            + "Cause we’re all in the mood for  a full-moon run \n"
            + "And you’ve got us feeling all right."
            
            ) else { fatalError("Abort!")
        }
        
        guard let head = Song(title: "Head?!?",
                              lyrics: "Head?!? \n"
            + "Who said head? \n"
            + "I’ll have some of that! \n"
            + "And we did, \n"
            + "And it was good! \n"
            + "And there was much rejoicing. \n"
            + "And then we fucked! \n"
            + "We fucked for hours, \n"
            + "Uprooting trees and shrubs and flowers, \n"
            + "Like Vikings, with horns on our head! \n"
            + "Head?!? \n"
            + "Who said head? \n"
            + "I’ll take some of that! \n"
            + "We don’t want women/men with good taste! \n"
            + "We want women/men that taste good! "
            
            ) else { fatalError("Abort!")
        }
        
        guard let hesTheMeanest = Song(title: "Head?!?",
                              lyrics: "He's the meanest, \n"
            + "He sucks a horse’s penis, \n"
            + "He’s the meanest, \n"
            + "He’s a horse’s ass. \n\n"
            
            + "Ever since he found it, \n"
            + "All he does is pound it, \n"
            + "He’s the meanest, \n"
            + "He’s a horse’s ass \n\n"
            
            + "He’s always pissing on us, \n"
            + "He’s rotten and dishonest, \n"
            + "He’s the meanest, \n"
            + "He’s a horse’s ass."
            
            ) else { fatalError("Abort!")
        }
        
        guard let hotVagina = Song(title: "Hot Vagina?!?",
                                       lyrics: "*Tune: \"I've Been Working on the Railroad\" \n\n"
            + "Hot vagina for your breakfast, \n"
            + "Hot vagina for your lunch, \n"
            + "Hot vagina for your dinner, \n"
            + "Just munch, munch, munch, munch, munch. \n"
            + "It’s so tasty and delicious, \n"
            + "Bite-size, ready to eat, \n"
            + "So grab your chick, and give her a lick; \n"
            + "Hot vagina can’t be beat."
            
            ) else { fatalError("Abort!")
        }
        
        songs += [soldier, AyYiYiYi, brotherHasher, bullshit, burlesque, dinah, doYourBallsHangLow, doYourBallsHangAndTits, dosABeer, doseOfClap, downDownSong, elCamino, frontHoleBackHole, fuckADuck, gapingHugeVagina, happyBirthdaySongs, hasherMan, head, hesTheMeanest, hotVagina]
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
