//
//  ViewController.swift
//  FGHeaderView Demo
//
//  Created by 夏桂峰 on 16/9/19.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,MFMailComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tbView=UITableView.init(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: self.view.frame.size.height-64), style: .plain)
        self.view.addSubview(tbView)
        tbView.delegate=self
        tbView.dataSource=self
        tbView.backgroundColor=UIColor.white
        let footer=UIView()
        footer.backgroundColor=UIColor.white
        tbView.tableFooterView=footer
        
        
        tbView .fg_setHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 150), image: UIImage(named: "IMG_2174.jpg"))
    }
    //MARK:UITableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let infos=["FGHeaderView","CGPointZero","Jianshu","Email"]
        let cid="cell id"
        var cell=tableView.dequeueReusableCell(withIdentifier: cid)
        if cell == nil {
            
            cell=UITableViewCell.init(style: .default, reuseIdentifier: cid)
        }
        cell?.textLabel?.text=infos[indexPath.row]
        cell?.textLabel?.textColor=UIColor.blue
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row < 3 {
            
            let urls=["https://github.com/Insfgg99x/FGHeaderView",
                      "http://cgpointzero.top",
                      "http://www.jianshu.com/users/c3f2e8c87dc4/latest_articles"]
            let urlString=urls[indexPath.row]
            UIApplication.shared.openURL(URL(string: urlString)!)
        }
        else{
            
            let mail:MFMailComposeViewController?
            mail=MFMailComposeViewController.init()
            mail?.setToRecipients(["newbox0512@yahoo.com"])
            mail?.setSubject("关于FGHeaderView的反馈")
            if mail != nil{
                self.present(mail!, animated: true, completion: nil)
            }
        }
    }
    //MARK:MFMailCOmposeViewController
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
    }
}

