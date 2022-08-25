//
//  ResultViewController.swift
//  Gacha
//
//  Created by 伊藤あかり on 2022/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスターを表示するためのImageViewを用意
    @IBOutlet var BackgroundImageView: UIImageView!
    @IBOutlet var MonsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //0~9までの乱数
        number = Int.random(in: 0...9)
        if number == 9 {
            MonsterImageView.image = UIImage(named:"monster010")
            BackgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            MonsterImageView.image = UIImage(named:"monster006")
            BackgroundImageView.image = UIImage(named: "bg_red")
        }else {
            MonsterImageView.image = UIImage(named:"monster003")
            BackgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
        @IBAction func back(){
            self.dismiss(animated: true, completion: nil)
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
