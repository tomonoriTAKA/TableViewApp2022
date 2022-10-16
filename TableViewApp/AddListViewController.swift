//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 高橋知憲 on 2022/10/16.
//

import UIKit

class AddListViewController: UIViewController {
    @IBOutlet weak var addText: UITextField!
    var taskArray: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
    
        if userDefaults.object(forKey: "add") != nil {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
    }
    
    
    @IBAction func addTask(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        taskArray.append(addText.text!)
        userDefaults.set(taskArray, forKey: "add") //キー"add"で配列をUserDefaultsに保存
        self.navigationController?.popViewController(animated: true) //1つ前の画面に戻る
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
