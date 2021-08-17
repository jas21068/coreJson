//
//  detailView.swift
//  AppleMusic
//
//  Created by Jaskirat Mangat on 2021-08-01.
//

import SwiftUI

struct detailView: View {
    var response1 : Response1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(response1.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
           
            Text("About me")
                .font(.title3)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding(.top, 11.0)
            Text(response1.about)
            
            Text("My Friend are")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            List(response1.friends) { user in
                Text(user.name)
            }
            
        }
    }
}


