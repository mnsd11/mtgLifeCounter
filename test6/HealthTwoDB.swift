//
//  HealthTwoDB.swift
//  test6
//
//  Created by DIRECTOR on 23.06.2022.
//

import Foundation
import RealmSwift


class HealthsTwo: Object {
    
    @objc dynamic var healthTwo: Int
    
    override init() {
        healthTwo=20
    }
 
}


