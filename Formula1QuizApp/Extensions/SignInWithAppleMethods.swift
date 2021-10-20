//
//  ExtensionYourProfileViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/20/21.
//

import Foundation
import AuthenticationServices
import UIKit

extension YourProfileViewController: ASAuthorizationControllerDelegate {
    
    //MARK: Sign in with Apple Methods
    @objc
    func startAppleIDAuthentication() {
        let provider = ASAuthorizationAppleIDProvider()
        let request = provider.createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = self
        controller.presentationContextProvider = self
        controller.performRequests()
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        switch authorization.credential {
        case let appleIdCredentials as ASAuthorizationAppleIDCredential:
             userIdentifier = appleIdCredentials.user
            
            self.saveUserIdentifier(userIdentifier)
            self.loggedIn = true
            
            print("DEBUG: Worked")
            print(self.loggedIn)
            removeSignInLabels()
            viewDidLoad()
        default:
            print("DEBUG: Failed")
            break
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        //Handle Error
    }
    
    func saveUserIdentifier(_ identifier: String) {
        loggedIn = true
        
    }
    
    private func removeSignInLabels() {
        signInWithAppleButton.removeFromSuperview()
        signInWithGoogleButton.removeFromSuperview()
        signInWithFacebookButton.removeFromSuperview()
        signInLabel.removeFromSuperview()
    }

}
