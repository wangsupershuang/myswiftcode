//
//  MainController.swift
//  swiftFactory
//
//  Created by wwll on 16/9/9.
//  Copyright © 2016年 wangshuang. All rights reserved.
//

import UIKit
import Foundation
import SnapKit

class MainController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    private var dypr:String?
    var dypu:String?
    var colltionView:UICollectionView!
    
    
    
//    init(){
//      super.init(coder, aDecoder: NSCoder)
//      self.dypr="pr";
//      self.dypu="pu";
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden=true;
    
        let layout = MainCollectionLayout()
        layout.itemSize=CGSizeMake(100, 100)
         colltionView=UICollectionView(frame:CGRectMake(0,0,0,0), collectionViewLayout:layout)
        self.view.addSubview(colltionView);
         colltionView.backgroundColor=UIColor.whiteColor()
         colltionView.delegate = self;
         colltionView.dataSource = self;
         colltionView! .registerClass(MainCollectionCell.self, forCellWithReuseIdentifier:"MainCollectionCell")
         colltionView.snp_makeConstraints { (make) in
         make.top.left.bottom.right.equalTo(self.view)
    }
    

    
    
    }
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MainCollectionCell", forIndexPath: indexPath) as! MainCollectionCell
        
        return cell
    }
    
//    - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//    {
//    return (CGSize){cellWidth,cellWidth};
//    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
      print("(\(indexPath.section),\(indexPath.row))")
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSizeMake(100, 100)
//    }
    
    
//    - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//    {
//    return UIEdgeInsetsMake(5, 5, 5, 5);
//    }
}

class MainCollectionLayout: UICollectionViewFlowLayout {
    
}

class MainCollectionCell: UICollectionViewCell {
    var imgView : UIImageView?//cell上的图片
    var titleLabel:UILabel?//cell上title

    override init(frame: CGRect) {
        super.init(frame: frame)
        imgView=UIImageView()
        imgView?.backgroundColor=UIColor.redColor()
        self.addSubview(imgView!)
        imgView?.snp_makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(self)
        }

        
        
        
//        //初始化各种控件
//        imgView = UIImageView(frame: CGRectMake(0, -10, (width-30)/2, 200))
//        self .addSubview(imgView!)
//        titleLabel = UILabel(frame: CGRectMake(5, CGRectGetMaxY(imgView!.frame)-12, (width-40)/2, 50))
//        titleLabel?.numberOfLines = 0
//        titleLabel?.font = UIFont.boldSystemFontOfSize(14.0)
//        titleLabel?.textColor = UIColor.lightGrayColor()
//        self .addSubview(titleLabel!)
//        
//        priceLabel = UILabel(frame: CGRectMake(5, CGRectGetMaxY(titleLabel!.frame), (width-40)/2/2, 20))
//        priceLabel?.numberOfLines = 0
//        priceLabel?.font = UIFont.boldSystemFontOfSize(14.0)
//        priceLabel?.textColor = UIColor.lightGrayColor()
//        self .addSubview(priceLabel!)
//        
//        readLabel = UILabel(frame: CGRectMake((width-30)/2/2, CGRectGetMaxY(titleLabel!.frame), (width-40)/2/2, 20))
//        readLabel?.numberOfLines = 0
//        readLabel?.textAlignment = NSTextAlignment.Right
//        readLabel?.font = UIFont.boldSystemFontOfSize(14.0)
//        readLabel?.textColor = UIColor.lightGrayColor()
//        self .addSubview(readLabel!)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}