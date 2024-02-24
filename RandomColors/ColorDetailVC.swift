//
//  ColorDetailVC.swift
//  RandomColors
//
//  Created by Priyanshu Gupta on 24/02/24.
//

import UIKit

class ColorDetailVC: UIViewController {
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=color ?? .white
        // Do any additional setup after loading the view.
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
