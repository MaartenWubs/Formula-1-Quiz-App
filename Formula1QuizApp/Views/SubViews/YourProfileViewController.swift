//
//  YourProfileViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/19/21.
//

import UIKit
import AuthenticationServices
import FacebookCore
import FBSDKLoginKit
import GoogleSignIn

class YourProfileViewController: UIViewController {

    public let publicTitle = "Your Profile"
    
    //MARK: General properties
    var loggedIn = false
    let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Please select a method to login"
        label.font = UIFont(name: "Formula1 Display Regular", size: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    //MARK: Sign in buttons properties
    let signInWithAppleButton: ASAuthorizationAppleIDButton = {
        let button = ASAuthorizationAppleIDButton(type: .signIn, style: .white)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signInWithFacebookButton: FacebookLoginButton = {
        let button = FacebookLoginButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    let signInWithGoogleButton: GIDSignInButton = {
        let button = GIDSignInButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.colorScheme = .light
        button.style = .wide
        return button
    }()
    
    //MARK: Main View code
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        if loggedIn {
            // If logged into account, show account details
            // Else shwo login options
        } else {
            addTextLabel()
            createSignInWithFacebookButton()
            createSignInWithGoogleButton()
            createSignInWithAppleButton()
        }
    }
    
    //MARK: Button methods
    //Sign in with Apple
    private func createSignInWithAppleButton() {
        if #available(iOS 13.0, *) {
            
            view.addSubview(signInWithAppleButton)
            
            NSLayoutConstraint.activate([
                signInWithAppleButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
                signInWithAppleButton.topAnchor.constraint(equalTo: signInWithGoogleButton.bottomAnchor, constant: 25),
                signInWithAppleButton.widthAnchor.constraint(equalTo: signInWithFacebookButton.widthAnchor),
                signInWithAppleButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    //Sign in with Facebook
    private func createSignInWithFacebookButton() {
        
        view.addSubview(signInWithFacebookButton)
        
        NSLayoutConstraint.activate([
            signInWithFacebookButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            signInWithFacebookButton.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            signInWithFacebookButton.widthAnchor.constraint(equalTo: view.widthAnchor),
            signInWithFacebookButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //Sign in with Google
    private func createSignInWithGoogleButton() {
        
        view.addSubview(signInWithGoogleButton)
        
        NSLayoutConstraint.activate([
            signInWithGoogleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInWithGoogleButton.topAnchor.constraint(equalTo: signInWithFacebookButton.bottomAnchor, constant: 25),
            signInWithGoogleButton.widthAnchor.constraint(equalTo: signInWithFacebookButton.widthAnchor),
            signInWithGoogleButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func addTextLabel() {
        
        view.addSubview(signInLabel)
        
        NSLayoutConstraint.activate([
            signInLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            signInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
