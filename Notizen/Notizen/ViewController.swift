import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet var table: UITableView!
    @IBOutlet var label: UILabel!
    
    var models:  [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Notizen"
    }
    
    @IBAction func erstellenNotiz() {
        guard let vc = storyboard?.instantiateViewController(identifier: "neu") as? ReinschreibenNotitz else {
            return
        }
        vc.title = "Neue Notiz"
        navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        return cell
    }
    
func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        //return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let vc =      storyboard?.instantiateViewController(identifier: "Notiz") as? GespeichertNotiz else {
            return
        }
        vc.title = "Notiz"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

