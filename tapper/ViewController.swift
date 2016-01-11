//
//  ViewController.swift
//  tapper
//
//  Created by shengxiang guo on 1/11/16.
//  Copyright © 2016 shengxiang guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //first view
    @IBOutlet var tapper: UIImageView!
    @IBOutlet var tapNum: UITextField!
    @IBOutlet var startButton: UIButton!
    //second view
    @IBOutlet var tapButton: UIButton!
    @IBOutlet var label: UILabel!
    
    var tapNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapButton.hidden = true;
        label.hidden = true;
    }
    
    
    @IBAction func gameStart(sender: AnyObject){
        
        if (tapNum.text != "" && tapNum.text != nil){
            tapNumber = Int(tapNum.text!)!
            
            tapper.hidden = true;
            tapNum.hidden = true;
            startButton.hidden = true
            
            tapButton.hidden = false
            label.hidden = false
            
            label.text = "Taps: \(tapNumber)"
        }
    }
    
  
    @IBAction func tap(sender: AnyObject) {
        tapNumber--
        label.text = "Taps: \(tapNumber)"
        if tapNumber == 0 {
            gameOver()
        }
    }
    
    func gameOver(){
        tapper.hidden = false;
        tapNum.hidden = false;
        startButton.hidden = false;
        
        tapButton.hidden = true
        label.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

