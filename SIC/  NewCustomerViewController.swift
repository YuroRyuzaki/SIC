//
//  NewCustomerViewController.swift
//  SIC
//
//  Created by Euro Ryuzaki on 2021/09/13.
//

import UIKit

class NewCustomerViewController: UIViewController, UITextFieldDelegate {

    
   
    @IBOutlet weak var birthday: UITextField!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
       createDatePicker()
        // Do any additional setup after loading the view.
    }
    
    //生年月日設定スタート
    func createDatePicker(){
        
        birthday.textAlignment = .center
    //toolber
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target:nil , action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        //assign toolbar
        birthday.inputAccessoryView = toolbar
        
        //assign date picker to the text filed
        birthday.inputView = datePicker
        
        //date picker mode
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = Locale(identifier: "ja-JP")
    }
    
    @objc func donePressed() {
        //firmatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        
        birthday.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    //生年月日設定エンド
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
