import UIKit

class GespeichertNotiz: UIViewController {

    @IBOutlet var GespeicherteNotizText: UITextView!
    
    
    @IBOutlet var  GespeicherteNotizUberschrift: UITextView!
    
    @IBOutlet var DeleteButton: UIButton!
    
    @IBAction func DeleteButton(_ sender: UIButton) {
    }
    
    public var NotizUberschrift: String = ""
    public var Notiz: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GespeicherteNotizUberschrift.text = NotizUberschrift
        GespeicherteNotizText.text = Notiz
    }
    
    
}

