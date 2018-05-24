//
//  ViewController.swift
//  samplePickerAlert
//
//  Created by yuka on 2018/05/24.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

// 1. プロトコルの設定　店長を呼び出す
class ViewController: UIViewController
,UIPickerViewDelegate
,UIPickerViewDataSource
    
{
    
    let teaList = ["ダージリン","アールグレイ","緑茶","アールグレイ２","月桃"]
    
    // 2.設定　列数 Componentが列数と同じ意味
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 3.設定　行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
    }
    
    // 4.設定　中身設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teaList[row] //"\(row)行目"
    }


    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 5.　デリゲート　店長を呼んでるのは自分だと宣言
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    
    // 6. 選択された時にしたいことを書く
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(teaList[row])
        //アラートを表示する

        //　1 アラートのベースを作る
        let alertController = UIAlertController(title: teaList[row], message: "お風呂で使うものは？", preferredStyle: .alert)

        //2 ボタンを追加　追加したいボタンの数だけaddAction
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        // 3 アラートを表示
        present(alertController,
                animated: true,
                completion: nil
        )

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

