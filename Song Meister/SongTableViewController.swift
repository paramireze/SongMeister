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
        
        guard let hotVagina = Song(title: "Hot Vagina",
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
        
        guard let iLikeHashing = Song(title: "I Like Hashing",
                                      lyrics: "I like hashing, I like hashing \n"
            + "Hashing’s fun, hashing’s fun \n"
            + "Fill up all the hash mugs, \n"
            + "Fill up all the hash mugs, \n"
            + "One by one, one by one."
            
            ) else { fatalError("Abort!")
        }
        
        guard let iNeedASheep = Song(title: "I need a Sheep",
                                     lyrics: "Bring me some whiskey, mother \n"
            + "I’m feeling frisky, mother \n"
            + "I need a sheep to keep me warm through the night! \n"
            + "I need a lover, mother \n"
            + "No, not my brother, mother \n"
            + "I need a sheep to keep me warm through the night! \n\n"
            
            + "Gerbils don’t make it, mother \n"
            + "They just can’t take it, mother \n"
            + "I need a sheep to keep me warm through the night! \n"
            + "Owls, bats and other critters \n"
            + "Just tend to give me the jitters \n"
            + "I need a sheep to keep me warm through the night! \n\n"
            
            + "Sheep never talk about it \n"
            + "They never doubt it \n"
            + "Always so placid, affectionate and nice! \n"
            + "Give me that lanolin \n"
            + "Better than flannel-in \n"
            + "I need a sheep to keep me warm through the night!"
            
            ) else { fatalError("Abort!")
        }
        
        guard let iUseToWorkInChicago = Song(title: "I Use to Work in Chicago",
                                             lyrics: "*Chorus* \n"
            + "I used to work in Chicago, \n"
            + "In an old department store. \n"
            + "I used to work in Chicago, \n"
            + "But I don’t work there anymore. \n\n"
            
            + "*Verse* \n"
            + "A woman came in for a glazed doughnut. \n"
            + "Glazed doughnut from the store? \n"
            + "Glazed doughnut she wanted, cream filled she got! \n"
            + "Ohhhh and I don’t work there anymore! \n\n"
            
            + "*More Verses:* \n\n"
        
            + "Ruler  ->  12 inches \n"
            + "Hammer  ->  Nailed \n"
            + "Liquor  ->  Lick her I did \n"
            + "Seafood  ->  Crabs \n"
            + "Juice Box  ->  Juice from my box \n"
            + "Brass Tub  ->  Golden Shower \n"
            + "Quick Service  ->  Quick Serviced \n"
            + "Nail  ->  Screwed \n"
            + "Fishing Rod  ->  My Pole \n"
            + "Jewelry  ->  Pearl Necklace \n"
            + "Duck  ->  Misheard her I did \n"
            + "Beer  ->  Bush \n"
            + "Horse  ->  Ridden \n"
            + "Doughnut  ->  My Hole \n"
            + "Pizza  ->  Backdoor Delivery \n"
            + "Ruler  ->  12 inches \n"
            + "Dinner  ->  Ate Out \n"
            + "Piano  ->  My Organ \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let iAmALittleHasher = Song(title: "I'm a Little Hasher",
                                     lyrics: "Tune: \"I’m a Little Teapot\" \n\n"
            + "I’m a little hasher, \n"
            + "Short and stout. \n"
            + "Here is my handle and here is my spout. \n"
            + "When I get all fucked up hear me shout, \n"
            + "Tip me over and pour me out! \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let ifYourGfTastesLikeShit = Song(title: "If your Girlfriend Tastes Like Shit",
                                                lyrics: "If your girlfriend tastes like shit, flip her over. \n"
            + "If your girlfriend tastes like shit, flip her over. \n"
            + "If your girlfriend tastes like shit, \n"
            + "That’s her asshole not her clit. \n"
            + "If your girlfriend tastes like shit, flip her over."
            
            ) else { fatalError("Abort!")
        }
        
        guard let itsASmallDick = Song(title: "It's a Small Dick",
                                                lyrics: "Tune: \"It’s a Small World\" \n"
            + "Well it isn’t long and it isn’t thick, \n"
            + "It gets hard too slow and it cums too quick, \n"
            + "It gets lost in her twat, \n"
            + "But it’s all that he’s got, \n"
            + "It’s a small, small, dick. \n\n"
            
            + "It’s a small dick after all, \n"
            + "It’s a small dick after all, \n"
            + "Always limp from alcohol, \n"
            + "It’s a small, small, dick! \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let jackTheNecrophiliac = Song(title: "Jack the Necrophiliac",
                                       lyrics: "*… = nana nana nana na* \n\n"
            + "My name is Jack… \n"
            + "and I’m a necrophiliac… \n\n"
            
            + "I fuck dead women… \n"
            + "and I fill them with jism… \n\n"
            
            + "I get frustrated… \n"
            + "when they’re cremated… \n\n"
            
            + "Cause try as I must… \n"
            + "I can’t fuck dust… \n\n"
            
            + "——————– \n\n"
            + "My name is Gus… \n"
            + "and I’m incestuous… \n\n"
            
            + "I fucked my mother… \n"
            + "and buggered my brother… \n\n"
            
            + "But when they die, \n"
            + "I will not cry… \n\n"
            
            + "Cause just like Jack… \n"
            + "I'm a necrophiliac… \n\n"
            
            + "——————– \n\n"
            + "My name is Kyle… \n"
            + "and I’m a pedophile… \n\n"
            
            + "Little boys and girls… \n"
            + "Are my sex toys… \n\n"
            
            + "If I have a son… \n"
            + "It’ll be so fun… \n\n"
            
            + "‘Cause just like Gus… \n"
            + "I’m incestuous… \n\n"
            
            + "——————– \n\n"
            + "My name is McDonald... \n"
            + "But I’m no Ronald… \n\n"
            
            + "My Speciality… \n"
            + "Is beastiality… \n\n"
            
            + "I show my charm… \n"
            + "Down on the farm… \n\n"
            
            + "I sew wild oats… \n"
            + "When I go at the goats… \n\n"
            
            + "I pet the pony… \n"
            + "And it makes me boney… \n\n"
            
            + "Forget little Bo-Peep… \n"
            + "I shag her sheep… \n\n"
            
            + "She says “golly”… \n"
            + "So I fuck her collie… \n\n"
            
            + "I blow the bull… \n"
            + "till my cheeks are full… \n\n"
            
            + "I don’t get rattled… \n"
            + "double fucking cattle… \n\n"
            
            + "Dad showed me how… \n"
            + "When we shared the cow… \n\n"
            
            + "I stroked her udder… \n"
            + "she said “I’m your mudder!”… \n\n"
            
            + "I did not fuss… \n"
            + "’cuz I’m like Gus… \n\n"
            
            + "——————– \n"
            + "I’m the ghost of McJack… \n"
            + "I was a bestial necrophiliac… \n\n"
            
            + "I got a big thrill… \n"
            + "When I reamed roadkill… \n\n"
            
            + "I’d say hop into bed girl… \n"
            + "‘n fuckme likea dead squirrel… \n\n"
            
            + "I’d sideswipe a hen… \n"
            + "Park and hit it again… \n\n"
            
            + "I did a dead duck… \n"
            + "And got hit by a truck… \n\n"
            
            + "Credit for many verses: Zamboner, MH3"
            

            
            ) else { fatalError("Abort!")
        }
        
        guard let jesusCantGoHashing = Song(title: "Jesus Can’t Go Hashing",
                                            lyrics: "*Verse* \n"
            + "Jesus can’t go hashing ‘cause the flour falls through his hands. \n"
            + "Jesus can’t go hashing ‘cause the flour falls through his hands. \n"
            + "Jesus can’t go hashing ‘cause the flour falls through his hands. \n"
            + "Jesus saves, Jesus saves, Jesus saves. \n\n"
            
            + "*Chorus* \n"
            + "More beer for all the Hashers, \n"
            + "More beer for all the Hashers, \n"
            + "More beer for all the Hashers, \n"
            + "Jesus saves, Jesus saves, Jesus saves. \n\n"
            
            + "*New Verse* \n\n"
            
            + "*More Verses* \n"
            + "Jesus can’t go hashing ‘cause… \n"
            + "…the Jew wont’s pay 5 bucks. \n"
            + "…his Dad knows all the trails. \n"
            + "…he turns the beer to wine. \n"
            + "…he’s too busy getting nailed. \n"
            + "…the shiggy’s on his head. \n"
            + "…he’s mowing my front lawn. \n"
            + "…he’s hung like (arms out like a cross) this. \n"
            + "…he works on Sunday. \n"
            + "…he doesn’t exist."
            
            ) else { fatalError("Abort!")
        }
        
        guard let kotexFactory = Song(title: "Kotex Factory",
                                            lyrics: "Tune: “As the Caissons Go Rolling Along”\n\n"
            + "*Chorus* \n"
            + "For it’s hi, hi, he, in the Kotex factory, \n"
            + "Shout out your sizes loud and clear (loud and clear)! \n"
            + "They’ve got small, medium and large, \n"
            + "They’ve got enough to fill a barge, \n"
            + "When the end of the month rolls around. \n\n"
            
            + "*Verse* \n"
            + "You can tell by the stain that she’s in a lot of pain. \n"
            + "As the end of the month rolls around. \n\n"
            
            + "*Repeat Chorus* \n\n"
            
            + "*More Verses* \n"
            + "You can tell by… \n"
            + "…the stain that she’s in a lot of pain. \n"
            + "…her stance she’s got cotton in her pants. \n"
            + "…her pout that her eggs are falling out. \n"
            + "…her stance that she’s bleeding in her pants. \n"
            + "…the ‘stache that the dog’s been in the trash. \n"
            + "…the stink that your cock will come out pink. \n"
            + "…the rope that you haven’t got a hope. \n"
            + "…the whining that she’s shedding her uterine lining. \n"
            + "…her anger, that you’ll need that coat hanger. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let meetTheHashers = Song(title: "Meet the Hashers",
                                      lyrics: "Tune: “The Flintstones”\n\n"
            + "Hashers, meet the Hashers. \n"
            + "They’re the biggest drunks in history. \n"
            + "From the hash of MADISON, \n"
            + "They’re the leaders in debauchery. \n"
            + "Half minds, trailing shiggy through the years, \n"
            + "Watch them as they down a lot of beers! \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let numberOne = Song(title: "Number One",
                                        lyrics: "*Starting with all digits erect*”\n\n"
            + "You’re not number five, \n"
            + "Number four, \n"
            + "Number three, \n"
            + "Number two… \n"
            + "You’re Number ONE! \n\n"
            
            + "*Middle finger is last finger erect*"
            
            ) else { fatalError("Abort!")
        }
        
        guard let oscarMeyer = Song(title: "Oscar Meyer Song (Peter Penis)",
                                    lyrics: "My penis has a first name, it’s P-E-T-E-R. \n"
            + "My penis has a second name, it’s P-E-N-I-S. \n"
            + "My girl she sucks is every day \n"
            + "and if you ask her why she’ll say \n"
            + "Gah-gag-gag-gag \n\n"
            
            + "His penis has a first name, it’s P-E-T-E-R. \n"
            + "His penis has a second name, it’s P-E-N-I-S. \n"
            + "I like to fuck him every day and if you ask my why I’ll say, \n"
            + "‘Cause peter penis has a way with my V-A-G-I-N-A \n\n"
            
            + "*MH3 Completely Sensical Version* \n"
            + "My penis has a first name, it’s F-O-R-E-skin. \n"
            + "My penis has an address, it’s just north of your chin. \n"
            + "I love to eat is every day, and if you ask me why I’ll say \n"
            + "Gah-gag-gag-gag \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let prisonRape = Song(title: "Prison Rape Song",
                                    lyrics: "Tune: “Lookin’ Out My Backdoor” \n"
            + "Just got out of prison, \n"
            + "My asshole’s still a-fizzin’ \n"
            + "Thinkin’ bout the friends I left behind in cell block 4 \n"
            + "They raped me in the showers, \n"
            + "It must have been for hours, \n"
            + "Now goo goo goo’s comin’ out my back door! \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let purpleHaze = Song(title: "Purple Haze",
                                    lyrics: "Purple haze \n\n"
            + "Running through my mind… \n\n"
            + "Drink it down, down, down, down… \n\n"
            + "Credit: Zamboner, MH3 \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let putYourLegOverMyShoulder = Song(title: "Put Your Leg Over My Shoulder",
                                                  lyrics: "Put your left leg over my shoulder, \n"
            + "Put your right leg over my shoulder, \n"
            + "La la la la! \n\n"
            
            + "Put your left tit over my shoulder, \n"
            + "Put your right tit over my shoulder, \n"
            + "Bla bla bla bla!"
            
            ) else { fatalError("Abort!")
        }
        
        guard let seldomSeens = Song(title: "Seldom Seens",
                                      lyrics: "Tune: “Where oh Where Has my Little Dog Gone?” \n\n"
            + "Where, Oh where were you last week? \n"
            + "Why did you make us hash all alone? \n"
            
            + "You Fat Lazy Bastards, you weren’t even here. \n"
            + "So we fucked all the virgins and drank all the beer. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let shesAHarriette = Song(title: "She's a Harriette",
                                     lyrics: "Tune: “Turkey in the Straw” \n\n"
            + "*Option A* \n"
            + "Oh the wiggle of her ass could make a dead man come, \n"
            + "And the nipple on her tit is as big as my thumb, \n"
            + "She’s a mean motherfucker, she’s a great cocksucker, \n"
            + "She’s a Harriette! \n\n"
            
            + "*Option B* \n"
            + "She‘s got big ‘ol boobies like the porno movies, \n"
            + "And she could suck a golf ball through a garden hose. \n"
            + "She shaves her beaver, and I‘ll never leave her. \n"
            + "Just get her drunk and anything goes."
            
            ) else { fatalError("Abort!")
        }
        
        guard let shiggyAndMud = Song(title: "Shiggy and Mud",
                                lyrics: "A man is made out of muscle and blood, \n"
            + "But a hasher is made out of shiggy and mud. \n"
            + "Shiggy and mud and a barrel of ale, \n"
            + "A rape whistle blowing on a shitty trail. \n\n"
            
            + "You drink sixteen beers and what do you get? \n"
            + "A little bit drunk and a little bit wet. \n"
            + "Well St. Peter don’t you call me cause I’ll make you frown, \n"
            + "I can’t go to heaven till I do this down down. \n\n"
            + "Credit: Shattered Sexpectations, Larryville Hash House Harriers"
            
            ) else { fatalError("Abort!")
        }
        
        guard let skeeterOnMyPeeter = Song(title: "Skeeter On My Peeter",
                                      lyrics: "Tune: “If You’re Happy and You Know It” \n\n"
            + "There’s a skeeter on my peter, wack it off, (wack it off!) \n"
            + "There’s a skeeter on my peter, wack it off, (wack it off!) \n"
            + "There’s a dozen on my cousin’s, \n"
            + "I can hear the fucker’s buzzin, \n"
            + "There’s a skeeter on my peter, wack it off! \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let swingLowSweetChariot = Song(title: "Swing Low, Sweet Chariot",
                                           lyrics: "Tune: “Swing Low, Sweet Chariot” \n\n"
            + "Swing low, sweet chariot, \n"
            + "Coming for to carry me home. \n"
            
            + "I looked over Jordan, and what did I see, \n"
            + "Coming for to carry me home? \n"
            + "A band of angels, coming after me, \n"
            + "Coming for to carry me home. \n"
            
            + "If you get to there before I shit, \n"
            + "Coming for to carry me home, \n"
            + "Tell all my friends that I‘m coming too, \n"
            + "Coming for to carry me home. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let theAirForceSong = Song(title: "The Air Force Song",
                                              lyrics: "Here we go… \n"
                                                + "Into the wild blue yonder \n"
                                                + "Crash and burn… \n"
                                                + "Son of a bitch. \n"
            
            ) else { fatalError("Abort!")
        }
       
        guard let theBallOfKerryMuir = Song(title: "The Ball of Kerrymuir",
                                            lyrics: "*Chorus* \n"
            + "Singin’ balls to your partner, \n"
            + "Ass against the wall. \n"
            + "If you can’t get laid on Saturday night, \n"
            + "You’ll never get laid at all \n\n"
            
            + "*Verse* \n"
            + "The bride was in the bedroom, \n"
            + "Explaining to the groom. \n"
            + "The vagina not the rectum \n"
            + "Is the entrance to the womb \n\n"
            
            + "*Repeat Chorus* \n\n"
            
            + "*More Verses* \n"
            + "The village magician he was there, \n"
            + "Doing his favorite trick. \n"
            + "Pulling his foreskin over his head \n"
            + "And vanishing up his prick. \n\n"
            
            + "There was fucking on the carpet, \n"
            + "There was fucking on the stairs. \n"
            + "You couldn’t see the carpet \n"
            + "For the layer of pubic hairs. \n\n"
            
            + "The village cripple he was there, \n"
            + "He wasn’t good for much. \n"
            + "He lined up all the ladies \n"
            + "And fucked them with his crutch. \n\n"
            
            + "The local herder he was there, \n"
            + "And he began to weep. \n"
            + "All these willing ladies \n"
            + "And not a single sheep. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let theBallSong = Song(title: "The Ball Song",
                                     lyrics: "Tune: “Colonel Bogey March” \n"
            + "*Select 3 hashers to incorporate into the song* \n\n"
            + "[Hasher 1], has only got 1 ball.\n"
            + "[Hasher 2], has two but very small.\n"
            + "[Hasher 3], has something similar,\n"
            + "But this guy has no balls at all."
            
            ) else { fatalError("Abort!")
        }
        
        guard let theBillClintonClapSong = Song(title: "The Bill Clinton Clap Song",
                                                lyrics: "My name’s Bill Clinton \n"
            + "And I’m no clown \n"
            + "So grab that beer \n"
            + "And drink it Down, down, down down…\n\n"
            + "Credit: MH3"
            
            ) else { fatalError("Abort!")
        }

        guard let theForeskinSong = Song(title: "The Foreskin Song",
                                                lyrics: "Tune: “My Bonnie Lies Over the Ocean” \n\n"
            + "My one skin hangs down to my two skin, \n"
            + "My two skin hangs down to my three, \n"
            + "My three skin hangs down to my foreskin, \n"
            + "My foreskin hangs down to my knees. \n\n"
            
            + "Roll back, roll back, \n"
            + "Roll back my foreskin for me, for me. \n"
            + "Roll back, roll back, \n"
            + "Roll back my foreskin for me."
            
            ) else { fatalError("Abort!")
        }
        
        guard let theHareSong = Song(title: "The Hare Song",
                                     lyrics: "Here’s to the hares, they’re true blue. \n"
            + "They are hashers through and through. \n"
            + "They are piss-pots, so they say. \n"
            + "They tried to get to heaven, \n"
            + "But they went the other way."
            
            ) else { fatalError("Abort!")
        }
        
        guard let theHurleyTitSong = Song(title: "The Hurley Tit Song",
                                          lyrics: "Her left tit hit me from the right side, \n"
            + "Her right tit hit me over here. \n"
            + "If both of here big tits had missed me, \n"
            + "I wouldn’t have spilled all my beer. \n\n"
            
            + "Credit: Numerous MH3 Hashers,including \n"
            + "Dribbles In and Nut Farmer \n\n"
            
            + "*Original Song* \n"
            + "Her left tit hangs down to her belly, \n"
            + "Her right tit hangs down to her knee. \n"
            + "If her left tit did equal her right tit, \n"
            + "She’d get lots of weenie from me. \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let theMusicMan = Song(title: "The Music Man",
                                     lyrics: "*Chorus*  \n"
            + "Leader: I am the Music Man \n"
            + "Hashers: You come from far away \n"
            + "Leader: And I can play \n"
            + "Hashers: What can you play? \n\n"
            
            + "*Verse* \n"
            + "Leader: I can play the sexy-phone \n"
            + "All: Sexy-sexy-sexy-phone, sexy-phone, sexy-phone. \n"
            + "Sexy-sexy-sexy-phone, sexy-sexy-phone. \n\n"
            
            + "*Chorus* \n"
            + "Leader: I am the Music Man \n"
            + "Hashers: You come from far away \n"
            + "Leader: And I can play \n"
            + "Hashers: What can you play? \n\n"
            
            + "*Verse* \n"
            + "Leader: I can play the piccolo \n"
            + "All: Pick-a pick-a pick-a-nose, pick-a nose x2 \n"
            + "Pick-a pick-a pick-a nose, pick-a pick-a nose. \n\n"
            
            + "Leader: I can play the sexy-phone \n"
            + "All: Sexy-sexy-sexy-phone, sexy-phone, sexy-phone. \n"
            + "Sexy-sexy-sexy-phone, sexy-sexy-phone. \n\n"
            
            + "*Repeat Chorus and all previous verses* \n\n"
            
            + "*Additional Verses* \n"
            + "Leader: I can play the Bungalows \n"
            + "All: Bongo bongo bongo boobs, bongo boobs x2 \n"
            + "Bongo bongo bongo boobs, bongo bongo boobs. \n"
            + "Leader: I can sing like Michael Jackson \n"
            + "All: Holy shit my hair’s on fire, hair’s on fire x2. \n"
            + "Holy shit my hair’s on fire, hair’s on hair’s on fire. \n"
            + "Leader: I can also sing like Michael Jackson \n"
            + "All: Come here come here little boy, little boy. \n"
            + "Come here come here little boy, little little boy. \n"
            + "Leader: I can sing like a bus driver \n"
            + "All: Holy shit my breaks don’t work, breaks don’t work x2 Holy shit my breaks don’t work, breaks \n"
            + "don’t breaks don’t work. \n"
            + "Leader: I can sing like a fuck boy \n"
            + "All: Hey girl Hey girl hey you up, hey you up x2 \n"
            + "Hey girl hey girl hey you up, hey you hey you up."
            
            ) else { fatalError("Abort!")
        }
        
        guard let theNoSong = Song(title: "The No Song",
                                          lyrics: "No. No. No.\n"
            + "Bad.Bad.Bad \n"
            + "Down. Down. Down"
            
            ) else { fatalError("Abort!")
        }
        
        guard let theSMMan = Song(title: "The S&M Man",
                                   lyrics: "Tune: “The Candy Man” \n\n"
            + "*Chorus* \n"
            + "It’s the S&M man, the S&M man. \n"
            + "The S&M man because he mixes it with love, \n"
            + "And makes the hurt feel good, yeah the hurt feel good. \n\n"
            
            + "*Verse* \n"
            + "Who will run through jaggers, ripping up his flesh, \n"
            + "Turn right around, and repeat the bloody mess? \n\n"
            
            + "*Repeat Chorus* \n\n"
            
            + "*More Verses* \n"
            + "Who will take a puppy; Grab him by the ears; \n"
            + "Fuck him in the ass until he cries his puppy tears? \n\n"
            
            + "Who will take a grater; Strap it to his arm; \n"
            + "Thrust her up and down until he gets vagina parmesan? \n\n"
            
            + "Who will take a baby; Lay it on the bed; \n"
            + "Fuck it in the ass until its really fucking dead? \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let theUrinalSong = Song(title: "The Urinal Song",
                                       lyrics: "They ought to be thoroughly pissed on, \n"
            + "They ought to be publicly shot (Bang! Bang!), \n"
            + "They ought to be tied to a urinal, \n"
            + "And left there to fester and rot."
            
            ) else { fatalError("Abort!")
        }
        
        guard let theVaginaSong = Song(title: "The Vagina Song",
                                       lyrics: "Someone’s in my brother’s big anus, \n"
            + "Someone’s in my brother I know. \n"
            + "Someone’s in my brother’s big anus, \n"
            + "Pumping like a Dynamo. \n\n"
            
            + "Credit: Cow Poker, MH3 \n\n"
            
            + "*Original Song* \n"
            + "Someone’s in my sister’s vagina, \n"
            + "Someone’s in my sister I know. \n"
            + "Someone’s in my sister’s vagina, \n"
            + "Pumping like a Dynamo."
            
            ) else { fatalError("Abort!")
        }
        
        guard let thereWasALittleBird = Song(title: "There Was a Little Bird",
                                       lyrics: "There was a little bird, \n"
            + "No bigger than a turd, \n"
            + "A-sittin’ on a telephone pole. \n"
            + "He ruffled up his neck, \n"
            + "And shit about a peck, \n"
            + "He puckered up his little asshole. \n"
            + "Asshole, asshole, asshole, asshole, \n"
            + "He puckered up his little asshole."
            
            ) else { fatalError("Abort!")
        }
        
        guard let twentyToes = Song(title: "Twenty Toes",
                                    lyrics: "There is a game called twenty toes, \n"
            + "That’s played around the town. \n"
            + "Women play with ten toes up, \n"
            + "And men with play toes down, down, down, down…"
            
            ) else { fatalError("Abort!")
        }
        
        guard let weGotVirgins = Song(title: "We've Got Virgins",
                                      lyrics: "Tune: “Frere Jacques” \n\n"
            
            + "We’ve got virgins, \n"
            + "We’ve got virgins, \n"
            + "At our hash, \n"
            + "At our hash, \n"
            + "Gonna get ’em drunked up, \n"
            + "Gonna get ’em fucked up, \n"
            + "Down the hatch, \n"
            + "Up the ass! \n\n"
            
            + "*Second version* \n"
            + "We’ve got virgins \n"
            + "We’ve got virgins \n"
            + "Yes We Do \n"
            + "Yes We Do \n"
            + "Gonna get ‘em fucked up \n"
            + "Gonna Get ‘em fucked up \n"
            + "Up the ass \n"
            + "Up the ass \n"
            
            ) else { fatalError("Abort!")
        }
        
        guard let whatAWonderfulTrail = Song(title: "What a Wonderful Trail",
                                             lyrics: "I see trails of true, \n"
            + "Poison oak too. \n"
            + "I hear hashers on trail \n"
            + "Crying “RU?” \n"
            + "And I think to myself, \n"
            + "What a wonderful trail!"
            
            ) else { fatalError("Abort!")
        }
        
        guard let whipItOutAtTheBallGame = Song(title: "Whip it Out at the Ballgame",
                                             lyrics: "Tune: “Take Me Out to the Ballgame” \n\n"
            + "Whip it out at the ball game, \n"
            + "Whip it round at the crowd. \n"
            + "Dip it peanuts and Crackerjacks – \n"
            + "I don’t care if you give it a whack! \n"
            + "Because it’s beat your meat at the ball game. \n"
            + "If you don’t cum it’s a shame. \n"
            + "‘Cause it’s one, two, and you’re covered in goo, \n"
            + "At the old ball game!"
            
            ) else { fatalError("Abort!")
        }
        
        guard let whyWereTheyBornSoBeautiful = Song(title: "Why Were They Born So Beautiful?",
                                                    lyrics: "Why were they born so beautiful? \n"
            + "Why were they born at all? \n"
            + "They’re no fucking use to anyone, \n"
            + "They’re no fucking use at all. \n"
            + "They may be a joy to their mother \n"
            + "But they’re a pain in the asshole to me."
            
            ) else { fatalError("Abort!")
        }
        
        guard let yogiBear = Song(title: "Yogi Bear",
                                                    lyrics: "Tune: “Camptown Races” \n\n"
            + "*Introduction* \n"
            + "There’s a bear in the deep dark woods – Yogi, Yogi, \n"
            + "There’s a bear in the deep dark woods – Yogi, Yogi Bear. \n"
            + "Yogi, Yogi Bear, Yogi, Yogi Bear, \n"
            + "There is a bear in the deep dark woods, \n"
            + "Yogi, Yogi Bear. \n\n"
            
            + "Yogi has a little friend – Boo Boo, Boo Boo, \n"
            + "Yogi has a little friend – Boo Boo, Boo Boo Bear. \n"
            + "Boo Boo, Boo Boo Bear, Boo Boo, Boo Boo Bear, \n"
            + "Yogi has a little friend, \n"
            + "Boo Boo, Boo Boo Bear. \n\n"
            
            + "Yogi has a girlfriend – Cindy, Cindy, \n"
            + "Yogi has a girlfriend – Cindy, Cindy Bear. \n"
            + "Cindy, Cindy Bear, Cindy, Cindy Bear, \n"
            + "Yogi has a girlfriend, \n"
            + "Cindy, Cindy Bear. \n\n"
            
            + "*Verse* \n"
            + "Cindy doesn’t have no teeth – Gummy, Gummy \n"
            + "Cindy doesn’t have no teeth – Gummy, Gummy Bear. \n"
            + "Gummy, Gummy Bear, Gummy, Gummy Bear, \n"
            + "Cindy’s a Gummy Bear. \n\n"
            
            + "*More Verses* \n\n"
            
            + "Yogi \n"
            + "Likes to roll his own  ->  Smokey Bear \n"
            + "Has an M-16  ->  Right to bear \n"
            + "Uses Condoms  ->  Clever Bear \n"
            + "Has a 12” cock  ->  Black Bear \n\n"
            + "Boo Boo \n"
            + "Has a 12’ cock  ->  Liar Bear \n"
            + "Has a cheesy dick  ->  Camem-bert \n"
            + "Is a nudist  ->  Right to bear \n\n"
            + "Cindy \n"
            + "Likes it upside down  ->  Koala Bear \n"
            + "Girlfriend  ->  Klondike Bear \n"
            + "Likes it up the butt  ->  Brown Bear \n"
            + "Is a frigid Bitch  ->  Polar Bear \n"
            + "Doesn’t shave her snatch  ->  Grizzly Bear \n"
            + "Wears Lingerie  ->  Teddy Bear \n"
            ) else { fatalError("Abort!")
        }
        
        guard let youreStupid = Song(title: "You're Stupid",
                                     lyrics: "You’re stupid, you’re stupid, \n"
            + "You’re really fucking dumb, \n"
            + "If it wasn’t for your mother, \n"
            + "You’d be a stain of cum!"
            
            ) else { fatalError("Abort!")
        }
        
        guard let ZuluWarrior = Song(title: "Zulu Warrior",
                                     lyrics: "Ika zimba zimba zoy \n"
            + "Ika zimba zimba zoo \n"
            + "Drink it down you Zulu warrior, \n"
            + "Drink it down you Zulu chief. \n"
            + "Drink it down you Zulu warrior, \n"
            + "Drink it down you Zulu chief, chief, chief!"
            
            ) else { fatalError("Abort!")
        }
        
        
        songs += [soldier, AyYiYiYi, brotherHasher, bullshit, burlesque, dinah, doYourBallsHangLow, doYourBallsHangAndTits, dosABeer, doseOfClap, downDownSong, elCamino, frontHoleBackHole, fuckADuck, gapingHugeVagina, happyBirthdaySongs, hasherMan, head, hesTheMeanest, hotVagina, iLikeHashing, iNeedASheep, iUseToWorkInChicago, iAmALittleHasher, ifYourGfTastesLikeShit, itsASmallDick, jackTheNecrophiliac, jesusCantGoHashing, kotexFactory, meetTheHashers, numberOne, oscarMeyer, prisonRape, purpleHaze, putYourLegOverMyShoulder, seldomSeens, shesAHarriette, shiggyAndMud, skeeterOnMyPeeter, swingLowSweetChariot, theAirForceSong, theBallOfKerryMuir, theBallSong, theBillClintonClapSong, theForeskinSong,theHareSong, theHurleyTitSong, theMusicMan, theNoSong, theSMMan, theUrinalSong, theVaginaSong, thereWasALittleBird, twentyToes, weGotVirgins, whatAWonderfulTrail, whipItOutAtTheBallGame, whyWereTheyBornSoBeautiful, yogiBear, youreStupid, ZuluWarrior]
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
