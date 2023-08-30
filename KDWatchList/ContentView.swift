//
//  ContentView.swift
//  KDWatchList
//
//  Created by Rob Ranf on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var dramas: FetchedResults<Drama>
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Text("Count: \(dramas.count)")
                } header: {
                    Text("Watching")
                        .font(.title2)
                }
                
                Spacer()
                
                Section {
                    Text("Count: \(dramas.count)")
                } header: {
                    Text("Plan to watch")
                        .font(.title2)
                }
                
                Spacer()
                
                Section {
                    Text("Count: \(dramas.count)")
                } header: {
                    Text("Completed")
                        .font(.title2)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
