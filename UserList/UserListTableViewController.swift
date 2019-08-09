//
//  ViewController.swift
//  UserList
//
//  Created by VERTEX22 on 2019/08/08.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

class UserListTableViewController: UIViewController {
    
    // ★変数一覧
    
    // 遷移先にわたすデータを格納する変数を定義
    var sendName: String = ""
    var sendHobby: String = ""
    
    // ユーザーリストの名前を辞書で定義
    var name : [String] = ["永井 優","小野 勇輔","豊岡 正紘","分目 祐太","金田 祐作","甲斐崎 香","志賀 大河","津國 由莉子","中村泰輔","堀田 真","田内翔太郎","福沢貴一","平田奈那","吉澤優衣"]
    
    // ユーザーデータに表示する趣味を辞書で定義
    var hobby : [String] = [
        "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。最近の趣味はバイクに乗ることとキックボクシング。",
        "スポーツをすることと釣りが好きです！サッカーと水泳をやっていました",
        "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "卓球とランニングが好きです。世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになりました。",
        "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。\n最近はキックボクシングジムに通い始めましたが、\n細身になりたいので筋トレはあまりしないようにしています。\nライブハウスに音楽を聞きに行くことが好きで、\n5個上の兄と一緒にライブやフェスに行くことがあります。",
        "あだ名はかおりん。18歳 女。好きなことは旅行と遊び友達と遊ぶことが好きです!!カラオケとかめっちゃ行きますwww",
        "バレーボール、サッカー、バスケと運動が全般的に好きです！海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！",
        "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです",
        "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。ポンコツという自負を持っている",
        "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています",
        "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!いつでもおいで",
        "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶しています。弾丸ひとり旅など、突然思い立ったことをやるのが好きです。東京生活わくわくしています〜",
        "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。他にもピアノや海外旅行や読書など様々な趣味がある。"
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
  
  // ボタンを押されたときの処理
  // 永井さんのボタンのみの紐付けでOK ?
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        // 押された人のタグ番号をもとにname,hobbyの辞書からデータをと取得し、変数に格納する
        
        sendName = name[sender.tag]
        sendHobby = hobby[sender.tag]
        
        // 遷移先の識別子の指定
        performSegue(withIdentifier: "ShowDataCell", sender: nil)
    }
    

    
    
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowDataCell" , let vc = segue.destination as? DetailViewController else {
            
             return }
        
        vc.catchName = sendName
        vc.catchHobby = sendHobby
        
    }
    
    
    
}


