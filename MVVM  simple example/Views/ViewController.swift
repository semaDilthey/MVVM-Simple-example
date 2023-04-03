//
//  ViewController.swift
//  MVVM + Coordinator simple app
//
//  Created by Семен Гайдамакин on 03.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel() // - ссылка на ViewModel
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: loginField.text ?? "", password: passwordField.text ?? "")
    }
    @IBOutlet weak var label: UILabel!
    
    func initialState() {
        label.textColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }

    func bindViewModel() {
        viewModel.statusText.bin { statusText in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        viewModel.statusColor.bin { statusColor in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
    }

}

