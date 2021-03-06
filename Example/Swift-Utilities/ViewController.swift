//
//  ViewController.swift
//  Swift-Utils
//
//  Created by amrit42087 on 03/05/2019.
//  Copyright (c) 2019 amrit42087. All rights reserved.
//

import UIKit
import Swift_Utilities

class ViewController: UIViewController {

    var animateFrom: UIRectEdge = .top
    var popUpPosition: PopUpPosition = .top

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    @IBAction func showToastButtonTapped(_ sender: UIButton) {

        self.showToast(message: "Success")
        //        self.showToast(message: "Success",
        //                       backgroundColor: .black, textColor: .white,
        //                       font: UIFont.systemFont(ofSize: 16))


    }

    @IBAction func showLoader(_ sender: UIButton) {
        view.lock(text: "loading...")

        DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            self.view.unlock()
        }
    }

    @IBAction func addPopUpAction(_ sender: UIButton) {
        let popUp = UIView.viewFromNib(name: "PopUp")
        popUp?.frame.size = CGSize(width: 320, height: 400)
        popUp?.addIn(self, addFrom: animateFrom, position: popUpPosition)
    }

    @IBAction func positionSelector(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            popUpPosition = .top
        case 1:
            popUpPosition = .center
        case 2:
            popUpPosition = .bottom
        default:
            popUpPosition = .center
        }
    }

    @IBAction func animateFromSelector(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            animateFrom = .top
        case 1:
            animateFrom = .left
        case 2:
            animateFrom = .right
        default:
            animateFrom = .bottom
        }
    }
}

