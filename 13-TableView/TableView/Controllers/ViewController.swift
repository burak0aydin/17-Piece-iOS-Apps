//
//  ViewController.swift
//  TableView
//
//  Created by Burak Aydın on 17.08.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var superHeroNames = [String] ()
    var superHeroImageNames = [String] ()
    var selectedNames = ""
    var selectedImageNames =  ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroNames.append("Batman")
        superHeroNames.append("Superman")
        superHeroNames.append("Spiderman")
        superHeroNames.append("Ironman")
        superHeroNames.append("Captan America")
        
        superHeroImageNames.append("batman")
        superHeroImageNames.append("superman")
        superHeroImageNames.append("spiderman")
        superHeroImageNames.append("ironman")
        superHeroImageNames.append("captainAmerica")
        
    }
    
    //numberOfRow -> Table view da kaç tane row olacağını belirler
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }
    
    //cellForRow -> Table view daki hücrenin içerisinde neler gösterileceğini belirler
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //datalarımı hücrelerin içine yazdırır
        cell.textLabel?.text = superHeroNames[indexPath.row]
        
        return cell
    }
    
    
    //kaydırarak silme işlemi
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            self.superHeroNames.remove(at: indexPath.row)
            self.superHeroImageNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
        
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        
        return config
        
    }
    
    // diğer sayfaya gönerilecek şeyler listelenir , ara bağlantı tanımlanır
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedNames = superHeroNames[indexPath.row]
        selectedImageNames =  superHeroImageNames[indexPath.row]
        performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    
    // diğer sayfaya gönerilecek şeyler, diğer sayfadaki değerler ile eşleştirilir
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc" {
            let destinationVC = segue.destination as! DetailsViewController
            
            destinationVC.selectedSuperHeroNames = selectedNames
            destinationVC.selectedSuperHeroImageNames = selectedImageNames
        }
    }
    
}
