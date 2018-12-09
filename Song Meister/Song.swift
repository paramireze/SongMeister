import UIKit
import os.log

class Song: NSObject, NSCoding  {
    
    var title: String
    
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("songs")
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: PropertyKey.title)
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let title = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("Unable to decode the name for a contrast agent object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        
        // Must call designated initializer.
        self.init(title: title)
    }
    
    struct PropertyKey {
        static let title = "title"
       
    }
    
    init?(title: String) {
        
        // Required fields
        guard !title.isEmpty else{
            return nil
        }
        
        //Initialize stored properties
        self.title = title
        
    }

}
