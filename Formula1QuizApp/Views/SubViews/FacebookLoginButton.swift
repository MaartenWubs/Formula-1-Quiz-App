//
//  FacebookLoginButton.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/19/21.
//

import UIKit
import FBSDKLoginKit
import FacebookCore

//Acording to the release notes of the Facebook sign in
//dependencie, the height of the button is fixed, This
//is a work around to get a custom height for the button.

class FacebookLoginButton: FBLoginButton {
    
    private let standardButtonHeight: CGFloat = 40

    override func updateConstraints() {
            // deactivate height constraints added by the facebook sdk (we'll force our own instrinsic height)
            for contraint in constraints {
                if contraint.firstAttribute == .height, contraint.constant < standardButtonHeight {
                    // deactivate this constraint
                    contraint.isActive = false
                }
            }
            super.updateConstraints()
        }

        override var intrinsicContentSize: CGSize {
            return CGSize(width: UIView.noIntrinsicMetric, height: standardButtonHeight)
        }

        override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
            let logoSize: CGFloat = 24.0
            let centerY = contentRect.midY
            let y: CGFloat = centerY - (logoSize / 2.0)
            return CGRect(x: y, y: y, width: logoSize, height: logoSize)
        }

        override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
            if isHidden || bounds.isEmpty {
                return .zero
            }

            let imageRect = self.imageRect(forContentRect: contentRect)
            let titleX = imageRect.maxX
            let titleRect = CGRect(x: titleX, y: 0, width: contentRect.width - titleX - titleX, height: contentRect.height)
            return titleRect
        }
}
