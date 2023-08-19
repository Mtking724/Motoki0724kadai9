//
//  secondViewController.swift
//  Motoki0724kadai9
//
//  Created by Motoki Okayasu on 2023/07/26.
//

import UIKit

class SecondViewController: UIViewController {
    //プロトコルに準拠させた変数を生成
    var prefectures: secondVCDelegate? = nil
    
    //ボタンを押して遷移元にデータを渡す
    @IBAction func tokyoButton(_ sender: Any) {
        prefectures?.getPrefecturesName(name: "東京都")
    }
    
    @IBAction func kanagawaButton(_ sender: Any) {
        prefectures?.getPrefecturesName(name: "神奈川県")
    }
    
    @IBAction func saitamaButton(_ sender: Any) {
        prefectures?.getPrefecturesName(name: "埼玉県")
    }
    
    @IBAction func chibaButton(_ sender: Any) {
        prefectures?.getPrefecturesName(name: "千葉県")
    }
}
