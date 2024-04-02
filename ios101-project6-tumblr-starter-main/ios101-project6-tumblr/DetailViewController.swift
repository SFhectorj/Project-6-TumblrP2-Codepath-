//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Hector J. Baeza on 3/31/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let post = post else {
            return
        }
        
        // Give imageView rounded corners
        imageView.layer.cornerRadius = 30
        
        // Remove HTM tags from the caption string
        textView.text = post.caption.trimHTMLTags()
        
        guard let firstPhoto = post.photos.first else {
            return
        }
            
            let imageURL = firstPhoto.originalSize.url
            
            Nuke.loadImage(with: imageURL, into: imageView)
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
