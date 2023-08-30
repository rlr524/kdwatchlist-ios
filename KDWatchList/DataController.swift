//
//  DataController.swift
//  KDWatchList
//
//  Created by Rob Ranf on 8/30/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DramaList")
    
    init() {
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
