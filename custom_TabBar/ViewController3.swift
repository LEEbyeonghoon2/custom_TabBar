//
//  ViewController3.swift
//  custom_TabBar
//
//  Created by 이병훈 on 2021/05/19.
//

import UIKit

class ViewController3: UIViewController{
    override func viewDidLoad() {
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 100))
        
        label.text = "세번째 뷰컨트롤러"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .green
        label.sizeToFit()
        label.center.x = self.view.frame.width / 2
        
        self.view.addSubview(label)
        super.viewDidLoad()
    }
}
