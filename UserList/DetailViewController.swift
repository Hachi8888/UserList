//
//  DetailViewController.swift
//  UserList
//
//  Created by VERTEX22 on 2019/08/08.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // 受け取ったデータを表示するテキストを紐付け
    @IBOutlet weak var ShowName: UITextView!
    
    @IBOutlet weak var ShowHobby: UITextView!
    
    // データを受け取る変数を定義
    var CatchName: String
    var CatchHobby: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 受け取ったデータをテキストに表示する
        ShowName.text = sendName
        showHobby.text = sendHobby
        
        

    }
    
}
