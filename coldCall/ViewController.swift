//
//  ViewController.swift
//  coldCall
//
//  Created by Erick Lui on 7/5/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var currentRandom: Int?
  let names = ["Uyanga", "Courtney", "Jay", "Bryant", "Jimmy", "Cody", "Ryota"]
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBAction func callButtonPresssed(_ sender: UIButton) {
    var random = getRandom()
    while currentRandom == random {
      random = getRandom()
    }
    currentRandom = random
    nameLabel.text = names[currentRandom!]
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    currentRandom = getRandom()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  func getRandom() -> Int {
    return Int(arc4random_uniform(UInt32(names.count)))
  }
}

