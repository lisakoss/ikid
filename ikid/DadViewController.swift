//
//  DadViewController.swift
//  ikid
//
//  Created by Lisa Koss on 2/5/18.
//  Copyright © 2018 Lisa Koss. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {
    
    var showAnswer = true
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func next(_ sender: Any) {
        if(showAnswer) {
            UIView.transition(with: self.view, duration: 0.5, options: .transitionFlipFromRight, animations: {}, completion: nil)
            
            label.text = "They haven't got a gig yet."
            button.setTitle("Question", for: .normal)
            showAnswer = false
        } else if(!showAnswer) {
            UIView.transition(with: self.view, duration: 0.5, options: .transitionFlipFromLeft, animations: {}, completion: nil)
            
            label.text = "Have you heard of the band 1023mb?"
            button.setTitle("Punchline", for: .normal)
            showAnswer = true
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
