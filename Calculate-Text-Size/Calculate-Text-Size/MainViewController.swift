//
//  ViewController.swift
//  Calculate-Text-Size
//
//  Created by xiaowei on 2018/6/6.
//  Copyright © 2018 xiaowei. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let autoLayoutLabel = UILabel()
    let frameLabel = UILabel()
    let boundingLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        createAutoLayoutLabel()
        createFrameLabel()
        createBoundingLabel()
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
        let size = frameLabel.sizeThatFits(CGSize(width: view.bounds.size.width - 16.0, height: 0))
        frameLabel.frame = CGRect(x: 8, y: 200, width: size.width, height: size.height)
    }
    
    private func createBoundingLabel() {
        let annotation = "分别在使用 AutoLayout 和 Frame 进行布局时，让 Label 根据其内容自适应宽高。"
        let rect = annotation.xw_boundingRect(with: CGSize.zero, font: UIFont.systemFont(ofSize: 14.0))
        print(rect)
    }
}

