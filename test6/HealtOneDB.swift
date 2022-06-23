//
//  HealtOneDB.swift
//  test6
//
//  Created by DIRECTOR on 23.06.2022.
//

import Foundation
import RealmSwift


class HealthsOne: Object {
    
    
    
    @objc dynamic var healthOne: Int
    
    override init() {
        healthOne=20
    }

}
