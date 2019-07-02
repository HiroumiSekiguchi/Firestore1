//
//  ViewController.swift
//  Firestore1
//
//  Created by 関口大海 on 2019/06/30.
//  Copyright © 2019 関口大海. All rights reserved.
//

import UIKit

enum ThoughtCategory: String {
    case serious = "serious"
    case funny = "funny"
    case crazy = "crazy"
    case popular = "popular"
}

class ViewController1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // UI部品の宣言
    @IBOutlet private weak var segmentController: UISegmentedControl!
    @IBOutlet private weak var tableView: UITableView!
    
    // 投稿を格納する配列を宣言
    private var thoughtsArray = [Thought]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableViewのデリゲートメソッドの有効化
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    // ☆☆☆以下、TableViewについて☆☆☆ //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thoughtsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
        
    }
    
    // Firebaseから取得するモデルを作る12分あたりのところから。
    
}

