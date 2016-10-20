//
//  VideoViewController.swift
//  PartyRock
//
//  Created by Sun Huanji on 2016/10/20.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var webView:UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
    private var _paertyRock:PartyRock!
    
    var partyRock:PartyRock{
        get{
          return _paertyRock
        }set{
         _paertyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    titleLabel.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
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
