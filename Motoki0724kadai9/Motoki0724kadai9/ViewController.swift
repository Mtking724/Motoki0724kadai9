//
//  ViewController.swift
//  Motoki0724kadai9
//
//  Created by Motoki Okayasu on 2023/07/23.
//

import UIKit


class ViewController: UIViewController, SecondViewControllerDelegate  {
    func didSelectPrefecture(name: String) {
        prefecturesLabel.text = name
        dismiss(animated: true, completion: nil)
    }
    
    // 都道府県名を表示するprefecturesLabelを準備する
    @IBOutlet weak private var prefecturesLabel: UILabel!
    
    //SecondVCでキャンセルボタンを押した時に遷移元に戻る処理
    @IBAction func cancelTransition(segue: UIStoryboardSegue) {}
    
    //prepare()メソッドを定義する
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            if let nav = segue.destination as? UINavigationController {
                let secondViewController = nav.topViewController as? SecondViewController
                secondViewController?.delegate = self

            }
        }
    }
}
