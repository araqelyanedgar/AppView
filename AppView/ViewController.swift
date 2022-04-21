//
//  ViewController.swift
//  ascas
//
//  Created by Edgar Arakelyan on 20.04.22.
//

import UIKit

class ViewController: UIViewController {
    var reusableSquare: ReusableSquare!
    var reusableSquare2: ReusableSquare!
    var reusableSquare3: ReusableSquare!
    var reusableSquare4: ReusableSquare!
    var reusableSquare5: ReusableSquare!
    var reusableSquare6: ReusableSquare!
    var reusableSquare7: ReusableSquare!
    var reusableSquare8: ReusableSquare!
    var reusableSquare9: ReusableSquare!
    var stackView, stackView2, stackView3, stackViewMain: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initStackViewTypes()
        initReusableSquares()
        initStackView()
        activateConstraints()

    }


}

extension ViewController {
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            stackViewMain.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackViewMain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            stackViewMain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
        ])
    }
    
    fileprivate func initReusableSquares() {
        reusableSquare = ReusableSquare()
        reusableSquare.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare2 = ReusableSquare()
        reusableSquare2.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare3 = ReusableSquare()
        reusableSquare3.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare4 = ReusableSquare()
        reusableSquare4.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare5 = ReusableSquare()
        reusableSquare5.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare6 = ReusableSquare()
        reusableSquare6.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare7 = ReusableSquare()
        reusableSquare7.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare8 = ReusableSquare()
        reusableSquare8.translatesAutoresizingMaskIntoConstraints = false
        reusableSquare9 = ReusableSquare()
        reusableSquare9.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func initStackView() {
        stackView.addArrangedSubview(reusableSquare)
        stackView.addArrangedSubview(reusableSquare2)
        stackView.addArrangedSubview(reusableSquare3)
        
        stackView2.addArrangedSubview(reusableSquare4)
        stackView2.addArrangedSubview(reusableSquare5)
        stackView2.addArrangedSubview(reusableSquare6)
        
        stackView3.addArrangedSubview(reusableSquare7)
        stackView3.addArrangedSubview(reusableSquare8)
        stackView3.addArrangedSubview(reusableSquare9)
        
        stackViewMain.addArrangedSubview(stackView)
        stackViewMain.addArrangedSubview(stackView2)
        stackViewMain.addArrangedSubview(stackView3)
        view.addSubview(stackViewMain)
    }
    
    fileprivate func initStackViewTypes() {
        stackViewMain = UIStackView()
        stackViewMain.axis = .vertical
        stackViewMain.spacing = 115
        stackViewMain.translatesAutoresizingMaskIntoConstraints = false
        
        stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 35
        stackView.distribution = .fillEqually
        
        stackView2 = UIStackView()
        stackView2.axis = .horizontal
        stackView2.spacing = 35
        stackView2.distribution = .fillEqually
        
        stackView3 = UIStackView()
        stackView3.axis = .horizontal
        stackView3.spacing = 35
        stackView3.distribution = .fillEqually
    }
}
