//
//  TableViewController.swift
//  UserList
//
//  Created by VERTEX22 on 2019/08/08.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // ★それぞれの趣味欄を定数化する
    
    // ゆりこちゃん
    let Yurikochan: String = "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。"
    
    // ゆいちゃん
    let Yuichan: String = "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。他にもピアノや海外旅行や読書など様々な趣味がある。"
    
    // かおりん
    let Kaorin: String = "あだ名はかおりん。18歳 女\n好きなことは旅行と遊び\n友達と遊ぶことが好きです!!カラオケとかめっちゃ行きますwww"
    
    // 永井さん
    let Nagaisan: String = "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。最近の趣味はバイクに乗ることとキックボクシング。"
    
    // 中村さん
    let Nakamurasan: String = "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。ポンコツという自負を持っている"
    
    // 堀田さん
    let Horitasan: String = "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG -FUGENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group やスナーキー・パピーが好き。"
    
    // 志賀さん
    let Shigasan: String = "バレーボール、サッカー、バスケと運動が全般的に好きです！海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！"
    
    // 分目さん
    let Wanmesan: String = "卓球とランニングが好きです。世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになりました。"
    
    // 福澤さん
    let Fukuzawasan: String = "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!いつでもおいで"
    
    // 豊岡さん
    let Toyookasan: String = "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！"
    
    // 小野さん
    let Onosan: String = "スポーツをすることと釣りが好きです！サッカーと水泳をやっていました"
    
    // 金田さん
    let Kanadasan = "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。最近はキックボクシングジムに通い始めましたが、細身になりたいので筋トレはあまりしないようにしています。ライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがあります。"
    
    // 田内さん
    let Tauchisan = "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています"
    
    // 自分
    let Hirata = "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶しています。弾丸ひとり旅など、突然思い立ったことをやるのが好きです。東京生活わくわくしています〜"
    
//    // ★それぞれの趣味欄を定数を使って配列で記載する
//    let hobbies: [Any] = [Yurikochan, Yuichan, Kaorin, Nagaisan, Nakamurasan, Horitasan, Shigasan, Wanmesan, Fukuzawasan, Toyookasan, Onosan, Kanadasan, Tauchisan, Hirata]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "ユーザーデータ"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    // 【必須】セクションの数:今回は2個(名前欄と趣味欄)なので、return 2 であっているのか。。
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
