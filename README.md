# ScrollViewCode
UIScrollViewをコードで実装のサンプル

# # はじめに
最近UIKitを学び始めた初心者です。　　同じ初心者、初学者の方を対象にしてます。また、自分のメモ、備忘録です。

Storyboardでやった方が楽ですが、UIScrollViewをコードのみで実装してみたかった。　　[この記事のサンプルプロジェクト](https://github.com/kabikira/ScrollViewCode)　　Xcode Version 14.0.1で実行してます。　　

StoryboardでUIScrollViewの実装は[この記事](https://qiita.com/Swift-User/items/67a5dd3d9eabf513aa2c)がわかりやすいですのでこちらからどうぞ。

# できるもの
こんな感じです。

# 
#　
# 
# おまけ
関数使わないとこんな感じでできます。
```swift

import UIKit

class ScrollViewController: UIViewController {
    var scrollView: UIScrollView!
    var containerView: UIView!
    


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
        
        let viewController = LabelViewController()
        addChild(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(viewController.view)
        
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
            
            viewController.view.topAnchor.constraint(equalTo: containerView.topAnchor),
            viewController.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            viewController.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            viewController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),

        ])
        viewController.didMove(toParent: self)
    }
    
}
```



