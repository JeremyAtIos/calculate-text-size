//
//  String+XWExtesion.swift
//  Calculate-Text-Size
//
//  Created by xiaowei on 2018/6/6.
//  Copyright © 2018 xiaowei. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    func xw_boundingRect(with size: CGSize, font: UIFont) -> CGRect {
        return xw_boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)
    }
    
    func xw_boundingRect(with size: CGSize, options: NSStringDrawingOptions, attributes: [NSAttributedStringKey: Any]?, context: NSStringDrawingContext?) -> CGRect {
        let nsstring = NSString(string: self)
        return nsstring.boundingRect(with: size, options: options, attributes: attributes, context: context)
    }
}
