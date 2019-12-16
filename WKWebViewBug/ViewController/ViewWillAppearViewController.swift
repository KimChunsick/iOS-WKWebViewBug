//
//  ViewWillAppearViewController.swift
//  WKWebViewBug
//
//  Created by 김덕원 on 16/12/2019.
//  Copyright © 2019 김덕원. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ViewWillAppearViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    func load(url: String) {
        guard let urlData = URL(string: url)
        else {
            return
        }

        let request: URLRequest = URLRequest(url: urlData)
        webView.load(request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        load(url: Constants.url)
    }
}
