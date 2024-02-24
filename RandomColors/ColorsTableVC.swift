//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Priyanshu Gupta on 24/02/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors:[UIColor]=[]
    override func viewDidLoad() {
        createRandomColors()
        super.viewDidLoad()

    }
    func createRandomColors() {
        for _ in 1...50 {
            colors.append(createRandomColor())
        }
    }
    func createRandomColor() -> UIColor {
        let randomColor=UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColor
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC=segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
}
extension ColorsTableVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        else { return UITableViewCell() }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color=colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
}





