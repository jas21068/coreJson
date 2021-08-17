//
//  ContentView.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-05.
//

import SwiftUI
import CoreData

struct ContentView: View {
   

    var body: some View {
        Home()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
