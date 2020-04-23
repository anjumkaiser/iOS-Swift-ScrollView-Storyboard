//
//  ViewController.swift
//  ScrollView Storyboard
//
//  Created by Muhammad Anjum Kaiser on 23/04/2020.
//  Copyright © 2020 Muhammad Anjum Kaiser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var contentWidth: CGFloat = 0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            let newWidth: CGFloat = 150
            let newHeight: CGFloat = 150
            let newX: CGFloat = view.frame.midX + view.frame.size.width * CGFloat(x) - 75
            let newY: CGFloat = ( view.frame.size.height / 2 ) - 75
            
            contentWidth += newX

            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX, y: newY, width: newWidth, height: newHeight)
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }


}

