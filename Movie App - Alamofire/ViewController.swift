//
//  ViewController.swift
//  Movie App - Alamofire
//
//  Created by SEMANUR ESERLER on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var characterTableView: UITableView!
    
    var instance = ApiClient()
    
    
    var characterModel : CharacterModel?
    
    var gelenListe : [Result]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        characterTableView.dataSource = self
        characterTableView.delegate = self
        
        instance.fetchCharacterAll()
        gelenListe = instance.resultList
        print( " gelen liste uzunluğu  \(gelenListe?.count)")
       
        
    }
    
    
}


extension ViewController :UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as! CharacterCell
        //burada custum oluşturdugumuz cellin identifierını yazıyoruz ve cast ediyoruz classını custom cell classını !!
        
        return cell
        
        
        
        
        
    }
    
    
    
}

