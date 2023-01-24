//
//  ViewController.swift
//  BackwardDdataPassing
//
//  Created by Mac on 28/10/1944 Saka.
//

import UIKit

class ViewController: UIViewController ,BackwardDataPassing {
    
    
    @IBOutlet weak var hiddenView: UIView!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenView.isHidden = false
        // Do any additional setup after loading the view.
    }
    @IBAction func navigateToSecondViewController(_ sender: Any) {

        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        secondViewController.delegate = self
        
        }
    func passDataBack(text: String) {
        self.nameLabel.text = text
        hiddenView.isHidden = true
    }

}

