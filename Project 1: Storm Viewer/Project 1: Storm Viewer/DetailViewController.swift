//
//  DetailViewController.swift
//  Project 1: Storm Viewer
//
//  Created by Vadim on 7/20/17.
//  Copyright © 2017 Vadim Prosviryakov. All rights reserved.
//

import UIKit
import Social

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        title = selectedImage
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
    
    @objc func shareTapped() {
         let vc = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: []) // In applicationActivities you can set VKApp and so on
         vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
         present(vc, animated: true)
//        if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
//            vc.setInitialText("Look at this great picture!")
//            vc.add(imageView.image!)
//            vc.add(URL(string: "http://www.photolib.noaa.gov/nssl"))
//            present(vc, animated: true)
//        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        view.backgroundColor = .black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
