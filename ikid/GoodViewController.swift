//
//  GoodViewController.swift
//  ikid
//
//  Created by Lisa Koss on 2/4/18.
//  Copyright © 2018 Lisa Koss. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    
    var showAnswer = false
    var count = 1
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func next(_ sender: Any) {
        if(showAnswer) {
            UIView.transition(with: self.view, duration: 0.5, options: .transitionFlipFromLeft, animations: {}, completion: nil)
            
            label.text = "No, I prefer Google."
            button.setTitle("Question", for: .normal)
            showAnswer = false
        } else if(!showAnswer) {
            UIView.transition(with: self.view, duration: 0.5, options: .transitionFlipFromRight, animations: {}, completion: nil)
            if(count == 1) {
                label.text = "Who's there?"
                button.setTitle("Next", for: .normal)
                count += 1
            } else if(count == 2) {
                label.text = "Yah?"
                count += 1
            } else if(count == 3) {
                label.text = "Yah who?"
                showAnswer = true
                count = 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
