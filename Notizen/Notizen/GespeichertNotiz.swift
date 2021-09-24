import UIKit

class GespeichertNotiz: UIViewController {

    @IBOutlet var GespeicherteNotizText: UITextView!
    
    
    @IBOutlet var  GespeicherteNotizUberschrift: UITextView!
    
    public var NotizUberschrift: String = ""
    public var Notiz: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GespeicherteNotizUberschrift.text = NotizUberschrift
        GespeicherteNotizText.text = Notiz
    }
    
    
}

