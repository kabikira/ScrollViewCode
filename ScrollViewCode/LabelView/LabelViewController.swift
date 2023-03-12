//
//  LabelViewController.swift
//  ScrollViewCode
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

class LabelViewController: UIViewController {
    var stacView: UIStackView!
    var label1: UILabel!
    var label2: UILabel!
    var label3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        stacView = UIStackView()
        stacView.axis = .vertical
        stacView.alignment = .fill
        stacView.distribution = .fillEqually
        stacView.spacing = 0
        stacView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stacView)
        
        label1 = UILabel()
        label1.text = "パンダ"
        label1.textAlignment = .center
        label1.backgroundColor = .red
        stacView.addArrangedSubview(label1)
        
        label2 = UILabel()
        label2.text = "コアラ"
        label2.textAlignment = .center
        label2.backgroundColor = .blue
        stacView.addArrangedSubview(label2)
        
        label3 = UILabel()
        label3.text = "ちょうちょ"
        label3.textAlignment = .center
        label3.backgroundColor = .green
        stacView.addArrangedSubview(label3)
        
        NSLayoutConstraint.activate([
            stacView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stacView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stacView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stacView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    

}
