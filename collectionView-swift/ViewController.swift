//
//  ViewController.swift
//  collectionView-swift
//
//  Created by 毛毛 on 16/7/18.
//  Copyright © 2016年 锐拓. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ViewController:UICollectionViewController{

   
    let pinchGesture = UIPinchGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let count = self.navigationController!.viewControllers.count
        self.title = "maomao \(count)"
    }
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30;
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        cell.backgroundColor = UIColor .redColor()
       
        return cell;
    }
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: indexPath.item * 10, height: indexPath.item * 10)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
        let nextVC = ViewController(collectionViewLayout: layout)
        nextVC.useLayoutToLayoutNavigationTransitions = true;
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}

