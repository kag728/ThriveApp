//
//  AuthValidator.swift
//  ThriveApp
//
//  Created by Copilot.
//  Copyright © 2020 Katherine Griffin. All rights reserved.
//

import Foundation

struct AuthValidator {

    /// Returns true when the string is a well-formed email address.
    static func isValidEmail(_ email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+\\-]+@[A-Za-z0-9.\\-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: email)
    }

    /// Returns true when the password meets Firebase's minimum 6-character requirement.
    static func isValidPassword(_ password: String) -> Bool {
        return password.count >= 6
    }
}
