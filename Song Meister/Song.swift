import UIKit
import os.log

class Song: NSObject, NSCoding  {
    
    var title: String
    var shortVerse: String
    var lyrics: String
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("songs")
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: PropertyKey.title)
        aCoder.encode(shortVerse, forKey: PropertyKey.shortVerse)
        aCoder.encode(lyrics, forKey: PropertyKey.lyrics)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        guard let title = aDecoder.decodeObject(forKey: PropertyKey.title) as? String else {
            os_log("Unable to decode the title for a song object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        guard let shortVerse = aDecoder.decodeObject(forKey: PropertyKey.shortVerse) as? String else {
            os_log("Unable to decode the shortVerse for a song object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        guard let lyrics = aDecoder.decodeObject(forKey: PropertyKey.lyrics) as? String else {
            os_log("Unable to decode the lyrics for a song object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        // Must call designated initializer.
        self.init(title: title, shortVerse: shortVerse, lyrics: lyrics)
    }
    
    struct PropertyKey {
        static let title = "title"
        static let shortVerse = "shortVerse"
        static let lyrics = "lyrics"
    }
    
    init?(title: String, shortVerse: String, lyrics: String) {
        
        // Required fields
        guard !title.isEmpty else{
            return nil
        }
        
        // Required fields
        guard !shortVerse.isEmpty else{
            return nil
        }
        
        // Required fields
        guard !lyrics.isEmpty else{
            return nil
        }
        
        //Initialize stored properties
        self.title = title
        self.shortVerse = shortVerse
        self.lyrics = lyrics
    }
}
