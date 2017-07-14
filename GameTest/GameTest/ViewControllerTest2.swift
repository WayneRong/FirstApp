//
//  ViewControllerTest2.swift
//  GameTest
//
//  Created by fmlin on 2017/7/10.
//  Copyright © 2017年 fmlin. All rights reserved.
//

import UIKit

class ViewControllerTest2: UIViewController {
    @IBOutlet weak var myTextView2: UITextView!
    var chosedIndexStrAry:[String]=[]
    func doByChosedIndexStr2(){
        self.myTextView2.isEditable = false
        switch chosedIndexStrAry[1] {
        case "認真學習":
            myTextView2.text = "考上明星高中，最後考上理想大學，因為成績優異，能讀醫科，也能朝學術研究發展\n選擇：\n1.去讀醫科\n2.學術研究"
        case "著重運動":
            myTextView2.text = "在運動方面表現優異，精通各種運動，最後被籃球和棒球球探相中\n選擇：\n1.去打職棒\n2.去打職籃"
        case "拿去失物招領":
            myTextView2.text = "憑運氣亂猜，也考上不錯的大學，因為大學生活無聊，就沒事找事做\n選擇：\n1.玩運彩和樂透\n2.打工並理財"
        case "著重玩樂":
            myTextView2.text = "因為聰明，所以比別人花較少時間唸書，幾乎都在玩，但成績免強還可以\n選擇：\n1.繼續進修\n2.直接工作"
        case "打架鬧事":
            myTextView2.text = "常常打架，因為身強力壯，總是打贏，慢慢打出名氣，沒有人不認識\n選擇：\n1.去混黑道\n2.打自由搏擊"
        case "買餅乾和飲料":
            myTextView2.text = "很愛賭博，每賭必贏，但是身體不太好，常常生病住院，認識很多志工\n選擇：\n1.繼續打麻將\n2.戒賭當志工"
        default:
            break
        }

        
    }

    @IBAction func myChoiceTwo1(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest3") as! ViewControllerTest3
        switch chosedIndexStrAry[1] {
        case "認真學習":
            chosedIndexStrAry.append("去讀醫科")
        case "著重運動":
            chosedIndexStrAry.append("去打職棒")
        case "拿去失物招領":
            chosedIndexStrAry.append("玩運彩和樂透")
        case "著重玩樂":
            chosedIndexStrAry.append("繼續進修")
        case "打架鬧事":
            chosedIndexStrAry.append("去混黑道")
        case "買餅乾和飲料":
            chosedIndexStrAry.append("繼續打麻將")

        default:
            break
        }
        vc.chosedIndexStrAry=self.chosedIndexStrAry
        self.navigationController?.pushViewController(vc, animated: true)

    }
    @IBAction func myChoiceTwo2(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest3") as! ViewControllerTest3
        switch chosedIndexStrAry[1] {
        case "認真學習":
            chosedIndexStrAry.append("學術研究")
        case "著重運動":
            chosedIndexStrAry.append("去打職籃")
        case "拿去失物招領":
            chosedIndexStrAry.append("打工並理財")
        case "著重玩樂":
            chosedIndexStrAry.append("直接工作")
        case "打架鬧事":
            chosedIndexStrAry.append("打自由搏擊")
        case "買餅乾和飲料":
            chosedIndexStrAry.append("戒賭當志工")
            
        default:
            break
        }
        vc.chosedIndexStrAry=self.chosedIndexStrAry
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.doByChosedIndexStr2()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
