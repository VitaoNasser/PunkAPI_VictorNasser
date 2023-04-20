//
//  Extensions.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 20/04/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
