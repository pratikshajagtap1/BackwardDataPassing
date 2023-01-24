//
//  SecondViewController.swift
//  BackwardDdataPassing
//
//  Created by Mac on 28/10/1944 Saka.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate : BackwardDataPassing?
    
    var nameText :String = ""
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    @IBAction func goToBack(_ sender: Any) {
        guard let delegateSVC = delegate else{
            print("no delegate found")
            return }
        nameText = self.nameTextField.text!
        delegateSVC.passDataBack(text: nameText)
        
        self.navigationController?.popViewController(animated: true)
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
