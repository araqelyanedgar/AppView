import Foundation
import UIKit


class ReusableSquare: UIView {
    var squareView: UIView!
    var squareChar: UILabel!
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        initSquareView()
        initChar()
        constructHierrarchy()
        activateConstraints()
    }
}

extension ReusableSquare {
    func initSquareView() {
        squareView = UIView()
        squareView.backgroundColor = .systemBlue
        squareView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initChar() {
        squareChar = UILabel()
        squareChar.text = "A"
        squareChar.textColor = .white
        squareChar.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func constructHierrarchy() {
        addSubview(squareView)
        addSubview(squareChar)
    }
    
    fileprivate func activateConstraints() {
        NSLayoutConstraint.activate([
            squareView.heightAnchor.constraint(equalToConstant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareChar.centerXAnchor.constraint(equalTo: squareView.centerXAnchor),
            squareChar.centerYAnchor.constraint(equalTo: squareView.centerYAnchor)

        ])
    }
}
