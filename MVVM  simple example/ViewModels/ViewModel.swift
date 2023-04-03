//
//  ViewModel.swift
//  MVVM + Coordinator simple app
//
//  Created by Семен Гайдамакин on 03.04.2023.
//

import Foundation
import UIKit.UIColor

// в данном классе будет переменная, которая будет изменяться
class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].passwords {
            statusText.value = "Log in failed"
            statusColor.value = .red
        } else {
            statusText.value = "You successfully logged in"
            statusColor.value = .green
        }
    }
}
