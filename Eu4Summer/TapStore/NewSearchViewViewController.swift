//
//  NewSearchViewViewController.swift
//  TapStore
//
//  Created by Ignotas Gaucys on 26/04/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

class NewSearchViewViewController: UIViewController {

    var pressed = false

    @IBAction func doneButton(_ sender: UIButton) {
        
        pressed.toggle()
        if pressed {
            sender.setBackgroundImage(#imageLiteral(resourceName: "Done"), for: .normal)
        } else {
            sender.setBackgroundImage(#imageLiteral(resourceName: "Book"), for: .normal)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
