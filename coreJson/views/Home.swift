//
//  Home.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-06.
//

import SwiftUI
import CoreData

struct Home: View {
    
    @State private var showingOff = false
    @State var users: [Response1] = []
    @Environment(\.managedObjectContext) var context
    func saveData(context: NSManagedObjectContext){
        
        users.forEach{(users) in
            
            let entity = Video(context: context)
            entity.id1 = users.id
            entity.name = users.name
            entity.company = users.company
            entity.email = users.email
            
            do{
                try context.save()
                print("success")
            }
            catch{
                print(error.localizedDescription)
            }
        }
        
    }
    
    var body: some View {
        NavigationView {
        List(users) { user in
            
            NavigationLink(destination: detailView(response1: user)){
            
            VStack(alignment: .leading){
                        
                        Text(user.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                HStack(alignment: .top){
                    Text(user.company)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.leading)
                    Text(
                        user.email)
                        .multilineTextAlignment(.trailing)
                        .padding(.horizontal, 11.0)
                    
                }
                
            }
        }
                }
        
        .navigationBarTitle("users & friends")
        .navigationBarItems(leading: Button(action: {
            showingOff = true
            
        }) {
            Text("CoreData")
                .foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0))
        }, trailing:
                                Button(action: {
                                    users.removeAll()
                                    apiCall().getUsers { (users) in
                                    self.users = users
                                        self.saveData(context: context)
                                    }
                                    
                                    
                                    
                                }) {
                                    Image(systemName: "arrow.clockwise.circle")
                                        .foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0))
                                })
        }
        
            .onAppear {
            apiCall().getUsers { (users) in
            self.users = users
                
            }
            }
       
        .sheet(isPresented: $showingOff) {
           offlineView()
            .environment(\.managedObjectContext, self.context)
        }
    }
    
    
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

