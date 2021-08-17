//
//  decodableFunc.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-05.
//

import Foundation
import CoreData

class apiCall:ObservableObject {

    func getUsers(completion:@escaping ([Response1]) -> ()) {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([Response1].self, from: data!)         
            DispatchQueue.main.async {
                completion(users)
              
            }
        }
        .resume()
    }

}
