//
//  User.swift
//  MVVM + Coordinator simple app
//
//  Created by Семен Гайдамакин on 03.04.2023.
//

import Foundation

struct User {
    let login : String?
    let passwords : String?
}

extension User {
    static var logins = [
    User(login: "lexone", passwords: "12345")]
}
