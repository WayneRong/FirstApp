//
//  ViewController.swift
//  GameTest
//
//  Created by fmlin on 2017/6/19.
//  Copyright © 2017年 fmlin. All rights reserved.
//

import UIKit
import ZHDropDownMenu
class ViewController: UIViewController ,ZHDropDownMenuDelegate,UITextFieldDelegate{

    
    @IBOutlet weak var firstTextView: UITextView!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var dropDownMenu: ZHDropDownMenu!
    var chosedIndex:Int!

    @IBAction func pushBtn(_ sender: UIButton) {
        
        
        
        UserDefaults.standard.set(myName.text, forKey: "userName")
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTest1") as! ViewControllerTest1

        switch chosedIndex {

        case 0:
            vc.chosedIndexStrAry.append("聰明")
            
            
        case 1:
            vc.chosedIndexStrAry.append("強壯")
            
        case 2:
            vc.chosedIndexStrAry.append("幸運")
        default:
            break
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropDownMenu.options = ["聰明","強壯","幸運"]//设置下拉列表项数据
        dropDownMenu.defaultValue = "" //设置默认值
        dropDownMenu.editable = false //禁止编辑
        dropDownMenu.showBorder = true //不显示边框
        dropDownMenu.delegate = self //设置代理
        // Do any additional setup after loading the view, typically from a nib.
        self.firstTextView.isEditable = false
        firstTextView.text = "歡迎來到體驗人生\n這是一個三分鐘體驗人生，而且純文字的遊戲\n希望你們會喜歡"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func dropDownMenu(_ menu: ZHDropDownMenu!, didChoose index: Int) {
        print("\(menu) choosed at index \(index)")
        chosedIndex = index
        self.startBtn.isEnabled = true
    }
    
    //编辑完成后回调
    func dropDownMenu(_ menu: ZHDropDownMenu!, didInput text: String!) {
        print("\(menu) input text \(text)")
    }

    




}

