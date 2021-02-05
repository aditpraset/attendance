//
//  LoginViewController.swift
//  phin-group
//
//  Created by Prasetyo Adit on 04/02/21.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {


    @IBOutlet weak var viewBody: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBody.layer.cornerRadius = 20
//        viewBody.roundedTop()
        
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}


extension UIView{
    func roundedTop(){
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.topRight,.topLeft], cornerRadii: CGSize(width: 10, height: 10))
        
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath.cgPath
        layer.mask = maskLayer1
        
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
