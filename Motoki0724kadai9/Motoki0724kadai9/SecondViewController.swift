//
//  secondViewController.swift
//  Motoki0724kadai9
//
//  Created by Motoki Okayasu on 2023/07/26.
//

import UIKit

class SecondViewController: UIViewController {
    //プロトコルに準拠させた変数を生成
    var delegate: SecondViewControllerDelegate?
    
    //ボタンを押して遷移元にデータを渡す
    @IBAction func tokyoButton(_ sender: Any) {
        delegate?.didSelectPrefecture(name: "東京都")
    }
    
    @IBAction func kanagawaButton(_ sender: Any) {
        delegate?.didSelectPrefecture(name: "神奈川県")
    }
    
    @IBAction func saitamaButton(_ sender: Any) {
        delegate?.didSelectPrefecture(name: "埼玉県")
    }
    
    @IBAction func chibaButton(_ sender: Any) {
        delegate?.didSelectPrefecture(name: "千葉県")
    }
}
