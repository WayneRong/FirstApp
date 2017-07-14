//
//  ViewControllerTest1.swift
//  GameTest
//
//  Created by fmlin on 2017/6/28.
//  Copyright © 2017年 fmlin. All rights reserved.
//

import UIKit

class ViewControllerTest1: UIViewController {
    var chosedIndexStrAry:[String]=[]
    @IBOutlet weak var myTextView: UITextView!
//    var myArray:[String]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.doByChosedIndexStr()
        // Do any additional setup after loading the view.
    }

    func doByChosedIndexStr(){
        self.myTextView.isEditable = false
        switch chosedIndexStrAry[0] {
        case "聰明":
            myTextView.text = "國民義務教育，開始每天都去上學，學到知識，也學會玩樂\n選擇：\n1.認真學習\n2.著重玩樂"
        case "強壯":
            myTextView.text = "從小體格就很好，長得又高又壯，運動樣樣精通，同時仗著身材去欺負別人\n選擇：\n1.著重運動\n2.打架鬧事"
        case "幸運":
            myTextView.text = "出生在有錢家庭，跟同學玩猜拳都贏，有天撿到1000元\n選擇：\n1.拿去失物招領\n2.買餅乾和飲料"
        default:
            break
        }
    
    }
    
    @IBAction func myChoice1(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest2") as! ViewControllerTest2
        switch chosedIndexStrAry[0] {
        case "聰明":
            chosedIndexStrAry.append("認真學習")
        case "強壯":
            chosedIndexStrAry.append("著重運動")
        case "幸運":
            chosedIndexStrAry.append("拿去失物招領")
        default:
            break
        }
        vc.chosedIndexStrAry=self.chosedIndexStrAry
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func myChoice2(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest2") as! ViewControllerTest2
        switch chosedIndexStrAry[0] {
        case "聰明":
            chosedIndexStrAry.append("著重玩樂")
        case "強壯":
            chosedIndexStrAry.append("打架鬧事")
        case "幸運":
            chosedIndexStrAry.append("買餅乾和飲料")
        default:
            break
        }
        
        vc.chosedIndexStrAry=self.chosedIndexStrAry
        self.navigationController?.pushViewController(vc, animated: true)
        
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
