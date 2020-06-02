//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Ishaq Amin on 02/06/2020.
//  Copyright © 2020 Ishaq Amin. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=490b2ac72cbe4faa82f7cd685f52db9e")
        
        WebService().getArticles(url: url!) { _ in
            
        }
    }
}
