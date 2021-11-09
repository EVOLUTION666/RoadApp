//
//  ViewController.swift
//  RoadApp
//
//  Created by Andrey on 09.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        let view = CaptureView()
        view.delegate = self
        self.view = view
        view.backgroundColor = .black
    }


}

extension ViewController: CaptureViewDelegate {
    func didTapButton() {
        let captureViewController = CaptureViewController()
        captureViewController.modalPresentationStyle = .fullScreen
        if let vc = UIStoryboard(name: "Storyboard", bundle: nil).instantiateViewController(withIdentifier: "vision") as? VisionObjectRecognitionViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
