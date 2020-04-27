//
//  DetailsViewController.swift
//  TapStore
//
//  Created by Piero Junior Gaetani on 05/03/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imgDetails: UIImageView!
    
    let sections = Bundle.main.decode([Section].self, from: "appstore.json")

    var id: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Siamo entrati nella sezione \(id)")
       
        imgDetails.image = UIImage(named: sections[0].items[id-1].image )
    }

}
