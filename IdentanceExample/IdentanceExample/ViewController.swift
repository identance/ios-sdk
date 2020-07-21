//
//  ViewController.swift
//  IdentanceExample
//  Copyright © 2020 KYC LABS LTD. All rights reserved.
//

import UIKit
import Identance


class ViewController: UIViewController {

    lazy var verification: Verification = {
        let configuration = Configuration()
        configuration.apiURL = URL(string: "https://")! // Setup API URL. It is provided by request
        
        // Sets token provider
        configuration.workingMode = .singleStage
        configuration.language = .system
        configuration.tokenProvider = ClosureTokenProvider() { completion in
            completion("JWT TOKEN MUST BE HERE", nil) // Return here valid JWT token
        }
        
        let verification: Verification
        
        do {
            verification = try Verification(configuration: configuration)
        } catch {
            fatalError("Failed to create Verification object due to \(error)")
        }
        
        return verification
    }()

    @IBAction private func tapStart() {
        let verificationController = verification.verificationViewController()
        verificationController.delegate = self
        present(verificationController, animated: true, completion: nil)
    }
    
    @IBAction func tapCheckStatus() {
        verification.getVerificationStatus { status, error in
            print("Status: \(status.rawValue)")
            
            if let error = error {
                print("Error: \(error)")
            }
            
            // handle status and error here
        }
    }
    
}


extension ViewController: VerificationViewControllerDelegate {
    
    // Verification successfully finished
    func verification(didComplete viewController: VerificationViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    // Verification finished with error
    func verification(_ viewController: VerificationViewController, failed error: Error) {
        viewController.dismiss(animated: true, completion: nil)
        
        // Handle error here
    }
    
}
