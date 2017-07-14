//
//  ViewControllerTest3.swift
//  GameTest
//
//  Created by fmlin on 2017/7/12.
//  Copyright © 2017年 fmlin. All rights reserved.
//

import UIKit

class ViewControllerTest3: UIViewController {
    @IBOutlet weak var myTextView3: UITextView!
    @IBOutlet weak var finalBtn: UIButton!
var chosedIndexStrAry:[String]=[]
    func doByChosedIndexStr3(){
        self.myTextView3.isEditable = false
        switch chosedIndexStrAry[2] {
        case "去讀醫科":
            myTextView3.text = "當上醫生，拼命賺了很多錢，讓家人過好生活，但也失去了不少與家人相處的時間，身體也有很多職業傷害，最終過著優渥但需要復健及吃藥的退休生活"
        case "學術研究":
            myTextView3.text = "發表許許多多的論文，受人尊重，儘管賺不多錢，但生活也還不錯，年老時更獲得許多大獎備受尊崇，退休後過著簡單的生活"
        case "去打職棒":
            myTextView3.text = "一打就打了好幾年，存了很多錢，也幫很多廣告代言，雖然沒有非常出名但也不少人認識，就這樣安安穩穩的退休，過著還不錯的生活"
        case "去打職籃":
            myTextView3.text = "一打成名，在各方面都很厲害，也有非常多的球迷，可惜打沒幾年生體不堪負荷，而且也常常受傷，最後宣布退出球壇，退休養病"
        case "玩運彩和樂透":
            myTextView3.text = "玩運彩買哪隊就獲勝，然後買了很多次樂透，最終中了頭獎，數十億，先捐了一部份的錢做公益，之後便過著很糜爛的生活，過著頹廢的生活"
        case "打工並理財":
            myTextView3.text = "去很多地方打工總是遇到貴人而被提拔，因此存了不少錢，後來拿去投資幾乎都賺錢，就這樣錢滾錢，投資經驗也更加雄厚，最終當上大老闆，賺很多錢，可惜身邊的人都很勢利，交心的朋友少，退休後就孤單地過著富有的生活"
        case "繼續進修":
            myTextView3.text = "雖然愛玩，還是考上不錯的學校，繼續進修，最後當上老師，教學風格很自由，深受學生愛戴，也帶出許多優秀的學生，最終退休，生活簡樸，但不時有學生來探望，晚年仍然很充實"
        case "直接工作":
            myTextView3.text = "由於學歷不夠，求職處處碰壁，只能從基層開始，但因為資質聰穎，所以做什麼都很有方法，得心應手，很快就由基層爬到主管，但還是礙於學歷，位階就無法往上，但生活過得不錯，最終就當個普通的上班族，安安穩穩的過一生"
        case "去混黑道":
            myTextView3.text = "最終決定混黑道，也因身強力壯，打架都沒輸過，在江湖闖出名號，並從小幫派被招攬去大幫派，然後從小弟慢慢當上大哥，財富女人也都有了，但也時常必須出面解決很多事，進出警局也是家常便飯，連仇家都常常找上門，就這樣過著還蠻優渥，可是每天擔驚受怕的生活，度過餘生"
        case "打自由搏擊":
            myTextView3.text = "發現自己迷上自由搏擊，便先去參加業餘比賽，打的成績相當不錯，被某間公司向中，也有了經紀人及教練，經過正規訓練，幾乎無戰不勝，得了很多冠軍，但是相對的，每場比賽也被打的體無完膚，所以打了一陣子身體也不堪負荷，便不再打了，並改行當教練直到退休為止"
        case "繼續打麻將":
            myTextView3.text = "運氣總是很好，要什麼牌，就來什麼牌，但也因為跟朋友玩總是贏錢，慢慢就沒人願意一起打，最後只能自己去找賭局，一樣常常贏錢，但慘遭別人不爽，有時候走在路上都會被蓋布袋，雖然生活不愁錢，但常常被揍加上身體本身就不好，因此醫療開銷很大，最終不玩麻將，但也沒學一技之長，只能隨便找個工作做，就這樣普通的過完一生"
        case "戒賭當志工":
            myTextView3.text = "看到志工們在醫院為人們服務，決定戒賭改當志工，不僅在醫院，也到社區關懷老人等等，因為熱心服務，得到人們的認可，而運氣也一直很好，總是在缺錢時就會有人捐錢，雖然賺不到什麼錢，但賺到人們的滿足及微笑，就這樣過著有意義的每一天，一直到老了動不了，而在臨終前，得到了世界的表揚，最終帶著滿意的微笑過世（完美結局）"
        default:
            break



        }

    }

    @IBAction func BackToFirst(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest") as! ViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let userName=UserDefaults.standard.value(forKey: "userName")
        let myUserName = userName as! String + " 的一生結束"
        finalBtn.setTitle(myUserName, for: .normal)
        self.doByChosedIndexStr3()
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
