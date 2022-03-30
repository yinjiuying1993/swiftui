//
//  BaseNavigationController.swift
//  swift01
//
//  Created by yinjiuying on 2022/2/22.
//

import UIKit
import Accelerate

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor  = .systemGray5
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        delegate = self
        navigationBar.tintColor = .black
    }
    
    func psuhAndRemove(vc:BaseViewController,animate:Bool) {
       self.pushViewController(vc, animated: animate)
         var arr =  self.viewControllers
         arr.remove(at: arr.count - 2)
         self.viewControllers = arr
    }
    
    func pushBottomToTop(vc:BaseViewController,animate:Bool)  {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = .moveIn
        transition.subtype = .fromTop
        self.view.layer.add(transition, forKey: "push")
        
        self.pushViewController(vc, animated: animate)
    }
    
    func popTopToBottom() {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = .reveal
        transition.subtype = .fromBottom
        self.view.layer.add(transition, forKey: "pop")
        self.popViewController(animated: false)
    }
    
    
    

}

extension BaseNavigationController:UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        
        
    }
}

extension UINavigationController:UIGestureRecognizerDelegate{
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
