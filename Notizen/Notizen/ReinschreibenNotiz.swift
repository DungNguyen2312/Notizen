import UIKit

class ReinschreibenNotitz: UIViewController {
   
    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!
 
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButton(title: "Speichern", style: .done,target:self, action: #selector(erstellenNotiz) )
        // test
    }
    @objc func erstellenNotiz(){
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty{
            completion?(text, noteField.text)
        }
    }
 
}
