//
//  Challenge.swift
//  AppleMusic
//
//  Created by Jaskirat Mangat on 2021-08-01.
//

//import SwiftUI
//
//struct Challenge: View {
//    
//    
//    @State var users: [Response1] = []
//    
//    var body: some View {
//        
//        NavigationView {
//        List(users) { user in
//            
//            NavigationLink(destination: detailView(response1: user))
//            {
//            
//            VStack(alignment: .leading){
//                        
//                        Text(user.name)
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.leading)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                
//                HStack(alignment: .top){
//                    Text(user.company)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.red)
//                        .multilineTextAlignment(.leading)
//                    Text(
//                        user.email)
//                        .multilineTextAlignment(.trailing)
//                        .padding(.horizontal, 0.0)
//                    
//                }
//                
//            }
//        }
//    }
//        
//
//        
//        .navigationBarTitle("users & friends")
//        .navigationBarItems(
//            
//            
//            
//            leading:  Button(action: {
//  
//        }) {
//            
//            
//            
//            Text("offline")
//                .foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0))
//        }.foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0)),
//        
//        
//        
//        trailing:
//                                Button(action: {
//                                    users.removeAll()
//                                    
//                                }) {
//                                    Image(systemName: "arrow.clockwise.circle")
//                                        .foregroundColor(Color(red: 0.706, green: 0.867, blue: 0.498, opacity: 1.0))
//                                }
//                            
//        
//        )
//            
//        }
//        .onAppear {
//        apiCall().getUsers { (users) in
//        self.users = users
//        }
//        }
//        
//        
//                }
//    
//    
//}
//
//
//
//struct Challenge_Previews: PreviewProvider {
//    static var previews: some View {
//        Challenge()
//    }
//}
