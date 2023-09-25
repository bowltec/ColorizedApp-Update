//
//  StartViewController.swift
//  HW 2
//
//  Created by Андрей Блинов on 21.09.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit


protocol SettingsVCDelegate {
    func setColor(_ color: UIColor)
}

class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? SettingsViewController else { return }
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
    }
}

extension StartViewController: SettingsVCDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
}
