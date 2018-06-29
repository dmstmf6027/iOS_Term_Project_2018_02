//
//  ImageViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_04 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

var images = ["늘해랑.png", "번개반점.png", "아딸.png", "왕짜장.png", "토마토 도시락.png", "홍콩반점.png"]

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = images.count
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func pageChanged(_ sender: Any) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
    
}

