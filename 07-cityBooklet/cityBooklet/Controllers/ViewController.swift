//
//  ViewController.swift
//  cityBooklet
//
//  Created by Burak Aydın on 19.08.2023.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cities = [CityDetails] ()
    var selectedCityName : CityDetails?
    var selectedCityImageName  : CityDetails?
    
    let istanbul = CityDetails(cityNames: "İstanbul", cityRegions: "Marmara Bölgesi", cityImageNames: UIImage(named: "istanbul")!)
    
    let ankara = CityDetails(cityNames: "Ankara", cityRegions: "İç Anadolu Bölgesi", cityImageNames: UIImage(named: "ankara")!)
    
    let izmir = CityDetails(cityNames: "İzmir", cityRegions: "Ege Bölgesi", cityImageNames: UIImage(named: "izmir")!)
    
    let antalya = CityDetails(cityNames: "Antalya", cityRegions: "Akdeniz Bölgesi", cityImageNames: UIImage(named: "antalya")!)
    
    let trabzon = CityDetails(cityNames: "Trabzon", cityRegions: "Karadeniz Bölgesi", cityImageNames: UIImage(named: "trabzon")!)
    
    let diyarbakır = CityDetails(cityNames: "Diyarbakır", cityRegions: "Güney Doğu Anadolu Bölgesi", cityImageNames: UIImage(named: "diyarbakır")!)
    
    let erzurum = CityDetails(cityNames: "Erzurum", cityRegions: "Doğu Anadolu Bölgesi", cityImageNames: UIImage(named: "erzurum")!)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        cities = [istanbul, ankara, izmir, antalya, trabzon, diyarbakır, erzurum]
        
    }
    
    //numberOfRow -> Table view da kaç tane row olacağını belirler
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    //cellForRow -> Table view daki hücrenin içerisinde neler gösterileceğini belirler
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //datalarımı hücrelerin içine yazdırır
        cell.textLabel?.text = cities [indexPath.row].cityNames
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             self.cities.remove(at: indexPath.row)
             self.tableView.deleteRows(at: [indexPath], with: .automatic)
             self.tableView.reloadData()
         }
       }
    
    // diğer sayfaya gönerilecek şeyler listelenir , ara bağlantı tanımlanır
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCityName = cities[indexPath.row]
        selectedCityImageName = cities[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    // diğer sayfaya gönerilecek şeyler, diğer sayfadaki değerler ile eşleştirilir
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            
            destinationVC.cityInformation = selectedCityName
            destinationVC.cityInformation = selectedCityImageName
        }
    }
        
        
    }




