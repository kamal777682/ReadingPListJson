//
//  ViewController.swift
//  ReadingPListJson
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlistData()
        // Do any additional setup after loading the view.
    }

    func readPlistData()
    {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist")
        {
            print(bundlePath)
            
            if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            {
            //print(dictionary)
            
                if let countries = dictionary ["countries"] as? [String]
                {
                    //print(countries)
                    for v in countries
                    {
                        print(v)
                    }
                }
                
                if let userList = dictionary ["users"] as? [[String: String]]
                {
                    var flag = false
                    for user in userList
                    {
                        if user["userName"] == "abc" && user["password"] == "abc123"
                        {
                            flag = true
                        }
                }
                    if flag == true
                    {
                        print("valid user")
                    }
                    else
                    {
                        print("invalid user")
                    }
            }
        }
    }

}

}
