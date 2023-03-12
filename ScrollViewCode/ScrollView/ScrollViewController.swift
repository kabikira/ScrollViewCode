//
//  ViewController.swift
//  ScrollViewCode
//
//  Created by koala panda on 2023/03/12.
//

import UIKit

class ScrollViewController: UIViewController {
    var scrollView: UIScrollView!
    var containerView: UIView!
    
    // containerViewにViewControllerを入れる関数
    func displayContentController(content: UIViewController, container: UIView) {
        addChild(content)
        // オートレイアウト使用するためにfalseにする
        content.view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(content.view)
        // LabelVeiwContorollerをcontanierViewに合わせる制約を貼る
        NSLayoutConstraint.activate([
            content.view.topAnchor.constraint(equalTo: container.topAnchor),
            content.view.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            content.view.rightAnchor.constraint(equalTo: container.rightAnchor),
            content.view.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])

        content.didMove(toParent: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        containerView = UIView()
        containerView.backgroundColor = .red
        containerView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(containerView)
        
        
        displayContentController(content: LabelViewController(), container: containerView)
        
        NSLayoutConstraint.activate([
            // スクロールビューの制約
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            // containerViewの制約
            containerView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
            containerView.heightAnchor.constraint(equalToConstant: 1000),
            
        ])

    }
    
}


