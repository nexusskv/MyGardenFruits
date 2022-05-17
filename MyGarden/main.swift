//
//  main.swift
//  MyGarden
//
//  Created by Rostyslav Gress on 19.03.22.
//

import Foundation


let gardens = ["My Garden": ["apples": [["size": "large", "color": "red"],
                                        ["size": "small", "color": "yellow"],
                                        ["size": "middle", "color": "black", "tree": "small"]] ,
                             "grapes": [["size": "middle", "color": "gray"],
                                        ["size": "middle", "color": "gray"]]
                            ],
               "Your Garden": ["grapes": [["size": "big", "color": "green"],
                                          ["size": "big", "color": "green"]]
                              ]
               ]

let gardensResults  = fromGarden(gardens, key: "My Garden")
let gardenFruits    = fromMyGarden(gardensResults, key: "apples")
let myApples        = getApples(gardenFruits, limit: 2)

print("myApples -> \(myApples)")


func fromGarden(_ values: [String: [String: [[String: String]]]], key: String) -> [String: [[String: String]]] {
    if let results = values[key] {
        return results
    }
    
    return [:]
}

func fromMyGarden(_ values: [String: [[String: String]]], key: String) -> [[String: String]] {
    if let results = values[key] {
        return results
    }
    
    return [[:]]
}

func getApples(_ array: [[String: String]], limit: Int) -> [[String: String]] {
    var resultApples = [[String: String]]()
    
    for i in 0 ..< array.count {
        let appleValues = array[i]
        
        if i < limit {
            resultApples.append(appleValues)
        }
    }
    
    return resultApples
}
