//
//  AKBluetoothMIDIButton.swift
//  AudioKit For iOS
//
//  Created by Aurelius Prochazka on 1/21/17.
//  Copyright © 2017 AudioKit. All rights reserved.
//

import CoreAudioKit

class AKBTMIDICentralViewController: CABTMIDICentralViewController {
    var uiViewController: UIViewController?
    
    override public func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
    }
    
    public func doneAction() {
        uiViewController?.dismiss(animated: true, completion: nil)
    }
}

public class AKBluetoothMIDIButton: UIButton {
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        let bluetoothMIDIViewController = AKBTMIDICentralViewController()
        let navController = UINavigationController(rootViewController: bluetoothMIDIViewController)
        navController.modalPresentationStyle = .popover
        let popC = navController.popoverPresentationController
        popC?.permittedArrowDirections = .any
        popC?.sourceRect = self.frame
        popC?.sourceView = self.superview
        let controller = self.superview?.next as? UIViewController
        controller?.present(navController, animated: true, completion: nil)
        bluetoothMIDIViewController.uiViewController = controller
        
    }

}
