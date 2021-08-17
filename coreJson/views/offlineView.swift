//
//  offlineView.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-06.
//

import SwiftUI
import CoreData

struct offlineView: View {
    @State var users: [Response1] = []
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(entity: Video.entity(), sortDescriptors: [])
    var results: FetchedResults<Video>
    
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                Button(action: {
                    do{
                        results.forEach{(video)in
                        
                            context.delete(video)
                            
                        }
                    }
               
                    
                }) {
                    Text("Clear data")
                        .foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0))
                }
            if results.isEmpty{
        Text("Click refresh to save data")
            }
            else{
                List(results) { result in
                    
                  
                    
                    VStack(alignment: .leading){
                                
                        Text(result.name ?? "")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                        HStack(alignment: .top){
                            Text(result.company ?? "")
                                .fontWeight(.bold)
                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.leading)
                            Text(
                                result.email ?? "")
                                .multilineTextAlignment(.trailing)
                                .padding(.horizontal, 11.0)
                            
                        }
                        
                    }
                
                        }
     
            }
            }
        }
     
    }
}

struct offlineView_Previews: PreviewProvider {
    static var previews: some View {
        offlineView()
    }
}
