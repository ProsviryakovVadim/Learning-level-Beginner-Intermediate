//
//  Person.swift
//  Project 10: Names to Faces
//
//  Created by Vadim on 7/26/17.
//  Copyright © 2017 Vadim Prosviryakov. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
