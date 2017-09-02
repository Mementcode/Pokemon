//
//  PokedexViewController.swift
//  Pokemon
//
//  Created by Callum Brennan on 02/09/2017.
//  Copyright © 2017 Callum Brennan. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var caughtPokemons : [Pokemon] = []
   var uncaughtPokemons : [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        caughtPokemons = getAllcaughtpokemons()
        uncaughtPokemons = getAllunCaughtpokemons()
    }

    @IBAction func mapTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
}
