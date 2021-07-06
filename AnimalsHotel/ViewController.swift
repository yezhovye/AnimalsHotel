//
//  ViewController.swift
//  AnimalsHotel
//
//  Created by Victoria Klimova on 06.07.2021.
//

import UIKit

        class Animal {
        var name = ""
        var description: String {
            "Animal"
        }
        init() {}
        init(name: String) {
            self.name = name
        }
    }
    
    class Dog: Animal {
        override var description: String {
            "Dog"
        }
    }
    
    class Cat: Animal {
        override var description: String {
            "Cat"
        }
    }
    
    class Bird: Animal {
        override var description: String {
            "Bird"
        }
    }
    
    let animal = Animal()
    let dog = Dog()
    let cat = Cat()
    let bird = Bird()
    
    func getClientPet(_ pet: Animal) -> Animal {
        pet
    }
    
    let pet = getClientPet(dog)
    
    if pet is Dog {
    print("The animal is dog")
    } else if pet is Cat {
    print("The animal is cat")
    } else if pet is Bird {
    print("The animal is bird")
    }
    
    func getPets() -> [Animal] {
        var pets: [Animal] = []
        
        let numberOfDogs = Int.random(in: 1...10)
        let numberOfCats = Int.random(in: 1...10)
        let numberOfBirds = Int.random(in: 1...10)
        
        for _ in 1...numberOfDogs {
            let dog = Dog()
            pets.append(dog)
        }
        
        for _ in 1...numberOfCats {
            let cat = Cat()
            pets.append(cat)
        }
        
        for _ in 1...numberOfBirds {
            let bird = Bird()
            pets.append(bird)
        }
        
        return pets
    }
    
    let pets = getPets()
    
    var dogCount = 0
    var catCount = 0
    var birdCount = 0
    
    for pet in pets {
        if pet is Dog {
            dogCount += 1
        } else if pet is Cat {
            catCount += 1
        } else if pet is Bird {
            birdCount += 1
        }
    
    }
    
        print("There are \(dogCount) dogs, \(catCount) cats, \(birdCount) birds")
    
    func walk(with dog: Dog) {
        print("Walking \(dog.name")
    }
    
    func cleanLitterBox(for cat: Cat) {
        print("Cleaning the \(cat.name) litter box")
    }
    
    func cleanCage(for bird: Bird) {
        print("Removing the \(bird.name) featers at the bottom of the cage")
    }
    
    for pet in pets {
        if let dog = pet as? Dog {
        walk(with: dog)
        } else if let cat = pet as? Cat {
        cleanLitterBox(for: cat)
        } else if let bird = pet as? Bird {
        cleanCage(for: bird)
        }
    }

