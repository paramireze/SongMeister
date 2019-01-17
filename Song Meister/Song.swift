import UIKit
import os.log

class Song: NSObject, NSCoding  {
    
    var title: String
    var shortDescription: String?
    var lyrics: String
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("songs")
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: PropertyKey.title)
        aCoder.encode(shortDescription, forKey: PropertyKey.shortDescription)
        aCoder.encode(lyrics, forKey: PropertyKey.lyrics)
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        guard let title = aDecoder.decodeObject(forKey: PropertyKey.title) as? String else {
            os_log("Unable to decode the title for a song object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        let shortDescription = aDecoder.decodeObject(forKey: PropertyKey.shortDescription) as? String
        
        guard let lyrics = aDecoder.decodeObject(forKey: PropertyKey.lyrics) as? String else {
            os_log("Unable to decode the title for a song object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        // Must call designated initializer.
        self.init(title: title, shortDescription: shortDescription, lyrics: lyrics)
    }
    
    struct PropertyKey {
        static let title = "title"
        static let shortDescription = "shortDescription"
        static let lyrics = "lyrics"
    }
    
    init?(title: String, shortDescription: String?, lyrics: String) {
        
        // Required fields
        guard !title.isEmpty else{
            return nil
        }
        
        guard !lyrics.isEmpty else{
            return nil
        }
        
        //Initialize stored properties
        self.title = title
        self.shortDescription = shortDescription
        self.lyrics = lyrics
    
    }
}
