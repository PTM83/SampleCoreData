//
//  DataController.swift
//  SampleCoreData
//
//  Created by Pablo Andrés Torres Montes on 03-09-24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FoodModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    // Save the data
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved!")
        } catch {
            
            let nsError = error as NSError
            print("unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
//     Add Food
    func addFood(name: String, calories: Double, context: NSManagedObjectContext) {
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories

        save(context: context) //<-- Función que permite salvar la data en la base de datos.
    }
    // Edit Food
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext) {
        food.date = Date()
        food.name = name
        food.calories = calories

        save(context: context)
    }

}

/*
 let container = NSPersistentContainer(name: "FoodModel")
 1. FoodModel es el nombre del archivo Data donde se crea la tabla de la base de datos Food
 2. Dentro del initializer se agrega container.loadPersistentStores {} <- Permite cargar la data
 3.
 */



