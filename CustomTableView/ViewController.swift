//
//  ViewController.swift
//  CustomTableView
//
//  Created by Endtry on 19/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit
import MaterialComponents

class ViewController: UITableViewController {
    
    private var feedList: [Feed] = []
    
    private func notifyData() {
        feedList = Feed.feedList()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notifyData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Wrap content in table view
        tableView.layoutSubviews()
        tableView.separatorColor = .white
    }
    
    private func navigateToFeedDetail(feed: Feed) {
        print("feed: \(feed)")
        
        let answerMessage = MDCSnackbarMessage()
        answerMessage.text = feed.title
        MDCSnackbarManager.show(answerMessage)
    }
    
}

extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FeedTableViewCell
        
        let feed = feedList[indexPath.row]
        
        cell.titleLabel.text = feed.title
        cell.onItemClick = {
            self.navigateToFeedDetail(feed: feed)
        }
        
        return cell
    }
    
    
}
