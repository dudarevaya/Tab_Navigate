//
//  TabOneViewController.swift
//  ДЗ13_2
//
//  Created by Сергей Щукин on 06.02.2022.
//

import UIKit

class TabOneViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scene(title: 1)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

class TabTwoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scene(title: 2, vc: TabTwoViewController_1())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

class TabThreeViewController: UIViewController {
    override func viewDidLoad() {
        
        scene(title: 3, vc: TabThreeViewController_1())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

class TabTwoViewController_1: UIViewController {
    override func viewDidLoad() {
        
        scene(title: 4, alert: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

class TabThreeViewController_1: UIViewController {
    override func viewDidLoad() {
        
        scene(title: 5, vc: TabThreeViewController_2())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

class TabThreeViewController_2: UIViewController {
    override func viewDidLoad() {
        
        scene(title: 6, alert: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
