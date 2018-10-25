//
//  ViewController.swift
//  UIGestureRecognizerChallenge
//
//  Created by Bryan Adams on 6/12/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    @IBAction func onViewMoved(_ sender: UIPanGestureRecognizer) {
        let panLocation = sender.location(in: view)
        //print(panLocation)
        myView.center = panLocation
    }
    
    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/


    
    /***************************************************
    * Start Your Code Here For Stretch #1
    ***************************************************/
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer){
        let pinchScale = sender.scale
        print(pinchScale)
        myView.transform = CGAffineTransform(scaleX: pinchScale, y: pinchScale)
    }
    
    /***************************************************
    * End Your Code Here For Stretch #1
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #2
    ***************************************************/
    var colorChange = 0
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer) {
        switch colorChange {
        case 0:
            myView.backgroundColor = UIColor.red
        case 1:
            myView.backgroundColor = UIColor.orange
        case 2:
            myView.backgroundColor = UIColor.yellow
        case 3:
            myView.backgroundColor = UIColor.green
        case 4:
            myView.backgroundColor = UIColor.blue
        default:
            myView.backgroundColor = UIColor.black
        if colorChange >= 6 {
            colorChange = 0
        }
       
    }
    
    /***************************************************
    * End Your Code Here For Stretch #2
    ***************************************************/



    /***************************************************
    * Start Your Code Here For Stretch #3
    ***************************************************/
    
    
    /***************************************************
    * End Your Code Here For Stretch #3
    ***************************************************/



    /***************************************************
     * Start Your Code Here For Stretch #4
     ***************************************************/


    /***************************************************
     * End Your Code Here For Stretch #4
     ***************************************************/
}

