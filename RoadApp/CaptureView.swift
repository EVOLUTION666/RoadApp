

import UIKit

protocol CaptureViewDelegate: AnyObject {
    func didTapButton()
}

class CaptureView: UIView {
    
    var helloLabel: UILabel!
    var button: UIButton!
    
    weak var delegate: CaptureViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
        configureButtons()
        setLayoutConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLabel() {
        helloLabel = UILabel()
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.numberOfLines = 0
        helloLabel.textColor = .white
        helloLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        helloLabel.textAlignment = .center
        helloLabel.text = "Привет! Данное приложение распознает дорожные знаки!"
        self.addSubview(helloLabel)
    }

    func configureButtons() {
        button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Начать распознавание", for: .normal)
        button.layer.cornerRadius = 100
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.clipsToBounds = true
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.addSubview(button)
    }
    
    func setLayoutConstraints() {
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 10),
            helloLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            helloLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            button.centerYAnchor.constraint(equalTo: layoutMarginsGuide.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 200),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    @objc func buttonAction() {
        delegate?.didTapButton()
    }
    
}
