//
//  Feed.swift
//  CustomTableView
//
//  Created by Endtry on 19/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import UIKit

struct Feed {
    var title: String = ""
    var subtitle: String = ""
    var imageName: String = ""
    
    static func feedList() -> [Feed] {
        return [
            Feed(title: "MDCCard can be used like a regular UIView."),
            Feed(title: "MDCCard can be used like a regular UIView."),
            Feed(title: "MDCCard can be used like a regular UIView."),
            Feed(title: "MDCCard can be used like a regular UIView."),
            Feed(title: "MDCCard can be used like a regular UIView.")
        ]
    }
}
