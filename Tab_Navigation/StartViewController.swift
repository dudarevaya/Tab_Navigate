//
//  ViewController.swift
//  ДЗ13_2
//
//  Created by Сергей Щукин on 06.02.2022.
//

import UIKit

class StartViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let tabOne = TabOneViewController()
            let tabOneBarItem = UITabBarItem(title: "Scene 1", image: UIImage(systemName: "sun.max.fill"), selectedImage: UIImage(systemName: "sun.max.fill"))
            
            tabOne.tabBarItem = tabOneBarItem
            
            let tabTwo = TabTwoViewController()
            let tabTwoBarItem2 = UITabBarItem(title: "Scene 2", image: UIImage(systemName: "moon.fill"), selectedImage: UIImage(systemName: "moon.fill"))
            
            tabTwo.tabBarItem = tabTwoBarItem2
        
            let tabThree = TabThreeViewController()
            let tabThreeBarItem3 = UITabBarItem(title: "Scene 3", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(systemName: "star.fill"))
            
            tabThree.tabBarItem = tabThreeBarItem3
            
            self.viewControllers = [tabOne, tabTwo, tabThree]
        }
}

extension UIViewController {
    func scene(title: Int, vc: UIViewController? = nil, alert: Bool? = nil) {
        self.view.backgroundColor = .white
        self.title = "Scene \(String(title))"
        
        if vc != nil {
            let button = UIButton()
            button.setTitle("Next Scene", for: .normal)
            button.setTitleColor(.systemBlue, for: .normal)
            view.addSubview(button)
            button.addAction(
                UIAction(
                    handler: {  [weak self] _ in
                        self?.navigationController?.pushViewController(vc!, animated: true)
            }), for: .touchUpInside)
            
            button.translatesAutoresizingMaskIntoConstraints = false
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
        if alert == true {
            let button = UIButton()
            button.setTitle("Next Scene", for: .normal)
            button.setTitleColor(.systemBlue, for: .normal)
            view.addSubview(button)
            button.addAction(
                UIAction(
                    handler: {  [weak self] _ in
                        let alert = self?.createAlert() ?? UIAlertController()
                        self?.present(
                            alert,
                            animated: true,
                            completion: nil
                        )
                    }),
                    for: .touchUpInside
                )
            button.translatesAutoresizingMaskIntoConstraints = false
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    }
    
    private func createAlert() -> UIAlertController {
        let alert = UIAlertController(
            title: "Это последний экран",
            message: "Дальше выхода нет.",
            preferredStyle: .alert
        )

        alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
        
        return alert
    }
}

