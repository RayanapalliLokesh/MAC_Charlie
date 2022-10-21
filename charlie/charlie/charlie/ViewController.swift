//
//  ViewController.swift
//  charlie
//
//  Created by Student on 10/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            img1.animationImages=imageset
            img1.animationDuration=5
            img1.startAnimating()
        img2.image=UIImage(named: "4.jpeg")
        img3.image=UIImage(named: "5.jpeg")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    var imageset:[UIImage]=[
        UIImage(named: "1.jpeg")! ,
        UIImage(named: "2.jpeg")! ,
        UIImage(named: "3.jpeg")! ,
        UIImage(named: "4.jpeg")! ,
        UIImage(named: "5.jpeg")!
            
    ]
    
    @IBAction func Play(_ sender: Any) {
        img1.animationImages=imageset
        img1.animationDuration=5
        img1.startAnimating()
        
    }
    
    
    @IBOutlet var img3: UIImageView!
    @IBOutlet var img1: UIImageView!
    
    @IBOutlet var img2: UIImageView!
    
    @IBOutlet var t1: UITextField!

    @IBAction func MF(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex==0){
            img2.image=UIImage(named: "4.jpeg")
        }
        else{
            img2.image=UIImage(named: "3.jpeg")
        }
    }
    
    @IBOutlet var t2: UITextField!
    
    @IBAction func Slide(_ sender: UISlider) {
       
         t2.text=String(Int(sender.value))
    }
    
   
    @IBOutlet var l1: UILabel!
    @IBAction func Clas(_ sender: UISegmentedControl) {
        let a=Int(t2.text!)
        if(sender.selectedSegmentIndex==0){
            
            
            let c=a!*200
            l1.text=String(c)
            
        }
        else if(sender.selectedSegmentIndex==1){
            
        let c=a!*150
            l1.text=String(c)
        }
        else{
            
            let c=a!*100
            l1.text=String(c)
            
        }
    }
    
    @IBAction func action(_ sender: UIButton) {
        let b={
            (action:UIAlertAction)->Void in
            self.img3.image=UIImage(named: "4.jpeg")
            
        }
        
        let c={
            (action:UIAlertAction)->Void in
            self.img3.image=UIImage(named: "5.jpeg")
            
        }
        
        let d={
            (action:UIAlertAction)->Void in
            self.img3.image=UIImage(named: "1.jpeg")
            
        }
        let myalert=UIAlertController(title:"Movie",message:"Vidyut  ",preferredStyle: .actionSheet)
        
     myalert.addAction(UIAlertAction(title: "khuda hafiz", style: .default, handler: b))
        
        myalert.addAction(UIAlertAction(title: "black widow", style: .default, handler: c))
        
myalert.addAction(UIAlertAction(title: "mario", style: .default, handler: d))
        self.present(myalert,animated:true,completion: nil)
    }
    
    
    @IBOutlet var t4: UITextField!
    @IBAction func Alert(_ sender: UIButton) {
        let al={
            (action:UIAlertAction)->Void in
            self.t4.text="Thanks For Visiting Your name \(String(describing: self.t1.text))"
        }
        
        let a={
            (action:UIAlertAction)->Void in
            self.t4.text="Do the required Changes"
        }
          let myalert=UIAlertController(title:"Welcome",message:"Choose  ",preferredStyle: .alert)
        
         myalert.addAction(UIAlertAction(title: "** yes **", style: .default, handler: al))
        
         myalert.addAction(UIAlertAction(title: "** No **", style: .default, handler: a))
        
        self.present(myalert,animated: true,completion: nil)
    }
    
}

