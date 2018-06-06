//
//  ViewController.swift
//  Calculate-Text-Size
//
//  Created by xiaowei on 2018/6/6.
//  Copyright © 2018 xiaowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let autoLayoutLabel = UILabel()
    let frameLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAutoLayoutLabel()
        createFrameLabel()
    }
    
    private func createAutoLayoutLabel() {
        autoLayoutLabel.text = "这是一段多行文本，这是一段多行文本，这是一段多行文本，这是一段多行文本，这是一段多行文本"
        autoLayoutLabel.textColor = .red
        autoLayoutLabel.numberOfLines = 0
        autoLayoutLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(autoLayoutLabel)
        autoLayoutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0).isActive = true
        autoLayoutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 44.0).isActive = true
        autoLayoutLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0).isActive = true
    }
    
    private func createFrameLabel() {
        frameLabel.text = "这是一段多行文本，这是一段多行文本，这是一段多行文本，这是一段多行文本，这是一段多行文本"
        frameLabel.textColor = .green
        frameLabel.numberOfLines = 0
        view.addSubview(frameLabel)
        let size = frameLabel.sizeThatFits(CGSize(width: view.bounds.size.width - 16.0, height: 1000))
        frameLabel.frame = CGRect(x: 8, y: 200, width: size.width, height: size.height)
    }
}

