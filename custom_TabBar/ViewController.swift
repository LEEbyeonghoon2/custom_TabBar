//
//  ViewController.swift
//  custom_TabBar
//
//  Created by 이병훈 on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel! = UILabel()
    override func viewDidLoad() {
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        
        label.text = "첫번째 뷰컨트롤러"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .green
        label.sizeToFit()
        label.center.x = self.view.frame.width / 2
        
        self.view.addSubview(label)
        super.viewDidLoad()
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar = self.tabBarController?.tabBar
        
        UIView.animate(withDuration: TimeInterval(0.3)) {
            tabBar?.alpha = tabBar?.alpha == 1 ? 0 : 1
            self.label.textColor = self.label.textColor == .green ? .red : .green
        }
    }


}

