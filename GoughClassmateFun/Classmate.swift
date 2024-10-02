//
//  Classmate.swift
//  GoughClassmateFun
//
//  Created by LOGAN GOUGH on 10/2/24.
//

import Foundation

class Classmate{
    var name: String
    var nickName: String
    var age: Int
    var year: Int
    var gpa:  Double
    
    init(name: String, nickName: String, age: Int, year: Int, gpa: Double) {
        self.name = name
        self.nickName = nickName
        self.age = age
        self.year = year
        self.gpa = gpa
    }
    
    
    
    
    func toString()->String{
        return "Name: \(name)\nNickname: \(nickName)\nAge: \(age)\nYear: \(year)\nGPA: \(gpa)"
        
    }
    
}
