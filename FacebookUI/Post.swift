//
//  Post.swift
//  FacebookUI
//
//  Created by Daniel Dramond on 19/11/2024.
//

import Foundation

class User: NSObject {

    let name: String
    let profileImageURL: URL?
    init(name: String, profileImageURL: URL?) {
        self.name = name
        self.profileImageURL = profileImageURL
    }
}

class Post: NSObject {

    var user: User
    var text: String
    init(user: User, text: String) {
        self.user = user
        self.text = text
    }
}
