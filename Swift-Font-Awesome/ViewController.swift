//
//  ViewController.swift
//  Swift-Font-Awesome
//
//  Created by longhao on 15/7/17.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var leftButton: UIBarButtonItem!
    private var rightButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigation()
        
        initUILabel()
        
        initButton()
        
        initImage()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func initUILabel(){
        let label = UILabel(frame: CGRectMake(50, 70, 100, 25))
        label.text = " Medium"
        label.fa = Fa.Medium
        self.view.addSubview(label)
        
        let like = UILabel(frame: CGRectMake(150, 70, 100, 25))
        like.faTextAlignment = .Left
        like.text = " Like"
        like.fa = Fa.Heart
        like.textColor = UIColor.redColor()
        self.view.addSubview(like)
        
        let world = UILabel(frame: CGRectMake(50, 120, 300, 50))
        world.faTextAlignment = .Right
        world.text = "Medium "
        world.fa = Fa.Medium
        world.font = FaType.X3.font
        self.view.addSubview(world)
    }
    
    func initButton() {
        
        let button  = UIButton(frame: CGRectMake(50, 220, 120, 30))
        button.backgroundColor = UIColor.clearColor()
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blueColor().CGColor
        
        button.titleLabel?.text = " Submit"
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.faTextAlignment = .Left
        button.fa(Fa.Comment, forState: .Normal)
        self.view.addSubview(button)
    }
    
    func initImage(){
        let image = UIImage(faCircle: Fa.Twitter, font: FaType.X3.font, backgroundColor: .clearColor())
        let imageView = UIImageView(frame: CGRectMake(50, 300, 64, 64))
        imageView.image = image
        self.view.addSubview(imageView)
        
        let image1 = UIImage(fa: Fa.Twitter, font: FaType.X3.font, color: .blueColor(), backgroundColor: .clearColor(), offset: CGPoint(x: 0, y: 8))
        let imageView1 = UIImageView(frame: CGRectMake(200, 300, 64, 64))
        imageView1.image = image1
        self.view.addSubview(imageView1)
    }
    
    func initNavigation(){
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Swift Font Awesome"
        
        leftButton = UIBarButtonItem(title: "", style: .Plain, target: self, action: "onClickMyButton:")
        leftButton.fa = Fa.Backward
        
        rightButton = UIBarButtonItem(title: " List", style: .Plain, target: self, action: "onClickMyButton:")
        rightButton.fa = Fa.Bars
        
        leftButton.tag = 1
        rightButton.tag = 2
        self.navigationItem.leftBarButtonItem = leftButton
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    internal func onClickMyButton(sender: UIButton){
        switch(sender.tag){
            
        case 1:
            self.view.backgroundColor = UIColor.whiteColor()
            
        case 2:
            self.view.backgroundColor = UIColor.orangeColor()
            
        default:
            println("")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

