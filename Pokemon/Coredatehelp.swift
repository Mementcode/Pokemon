//
//  Coredatehelp.swift
//  Pokemon
//
//  Created by Callum Brennan on 02/09/2017.
//  Copyright © 2017 Callum Brennan. All rights reserved.
//

import UIKit
import CoreData

func addAllPokemon ()  {
    
    createPokemon(name: "Mew", imageName: "mew")
    createPokemon(name: "Meowth", imageName: "meowth")
    createPokemon(name: "Pikachu", imageName: "pikachu")
    createPokemon(name: "Bullbasaur", imageName: "bullbasuar")
    createPokemon(name: "Bellsprout", imageName: "bellsprout")
    createPokemon(name: "Abra", imageName: "abra")
    createPokemon(name: "Mankey", imageName: "mankey")
    createPokemon(name: "Pidgey", imageName: "pidgey")
    createPokemon(name: "Psuduck", imageName: "psuduck")
    createPokemon(name: "Caterpie", imageName: "caterpie")
    
    (UIApplication.shared.delegate as!AppDelegate).saveContext()
}

func createPokemon (name:String, imageName:String) {
    
    let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
    
    let pokemon = Pokemon(context: context)
    
    pokemon.name = name
    pokemon.imageName = imageName
}


func getAllPokemon () -> [Pokemon] {
    
     let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
    
    do {
    let pokemons = try context.fetch(Pokemon.fetchRequest()) as! [Pokemon]
    
        
        if pokemons.count == 0 {
            addAllPokemon()
            return getAllPokemon()
        }
        
        return pokemons
    }catch {}
    
    return []
    
    
}

func getAllcaughtpokemons () -> [Pokemon]  {
    

}

func getAllunCaughtpokemons () -> [Pokemon]  {
    
}
