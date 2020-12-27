//
//  IngredientManager2App.swift
//  IngredientManager2
//
//  Created by Dominick Vaughn on 12/19/20.
//


import SwiftUI
import CoreData

@main
struct IngredientManager2App: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, pC.viewContext)
        }
    }
}

var pC: NSPersistentContainer = {
    
    let container = NSPersistentContainer(name: "Model" )
    container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
            fatalError( "unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()
func saveContext () {
    let context = pC.viewContext
    if context.hasChanges {
        do {
            try context.save()
        } catch {
            
            let nserror = error as NSError
            fatalError( " unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
