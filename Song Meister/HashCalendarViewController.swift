import WebKit
import UIKit
import os.log

class HashCalendarViewController: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for:segue, sender: sender)
    }
    
    override func viewDidLoad() {
        
        let url = NSURL (string: "https://calendar.google.com/calendar/embed?src=q206h4gbp4cfg5m13ip95vch88%40group.calendar.google.com&ctz=America%2FChicago");
        let request = NSURLRequest(url: url! as URL);
        webView.load(request as URLRequest);
        addLogo()
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
