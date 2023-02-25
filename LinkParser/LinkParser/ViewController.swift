//
//  ViewController.swift
//  LinkParser
//
//  Created by Kyzu on 25.02.23.
//

import UIKit

class ViewController: UIViewController {

    private var utmDict: [String : String] = [:]
    var urlString = "https://examplesite.com/?utm_source=vk&utm_medium=baner&UNIMPORTANT_id=123456&utm_campaign=sale&utm_content=link&UNUSED_PARAMETER=1&utm_term=app"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUtmFromLink(link: urlString)
    }
    
    private func getUtmFromLink(link: String) {
         if let urlComponents = URLComponents(string: link), let queryItems = urlComponents.queryItems {
             for item in queryItems {
                 if item.name.contains("utm") {
                 utmDict[item.name] = item.value
                 }
             }
         }
         print(utmDict)
    }


}

