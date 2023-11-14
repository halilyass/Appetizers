//
//  User.swift
//  Appetizers
//
//  Created by Halil YAŞ on 10.11.2023.
//

import Foundation

struct User : Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
