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
        var view = CaptureView()
        self.view = view
        view.backgroundColor = .black
    }


}

