//
//  PhotoDetailViewController.swift
//  Tumblr-Feed
//
//  Created by Student on 2/13/18.
//  Copyright © 2018 Aayush Gupta. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    var photos: [[String: Any]]?
    
    @IBOutlet var detailImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // let post = posts[indexPath.row]
        
        if let photos = photos{
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            detailImageView.af_setImage(withURL: url!)
        }
        
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
