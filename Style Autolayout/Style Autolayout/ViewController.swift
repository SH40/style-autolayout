
import UIKit

class ViewController: UIViewController {

    lazy var lblCase1 = getUIView(color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), text: "NSLayoutConstraint")
    lazy var lblCase2 = getUIView(color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), text: "Visual Format")
    lazy var lblCase3 = getUIView(color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), text: "NSLayoutAnchor")
    lazy var lblCase4 = getUIView(color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), text: "NSLayoutAnchor short")
    
    func getUIView(color: UIColor, text: String) -> UILabel {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.backgroundColor = color
        lbl.text = text
        lbl.textAlignment = .center
        return lbl
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //Case1 ▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽
        self.view.addSubview(lblCase1)
        let t = NSLayoutConstraint(item: lblCase1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top,  multiplier: 1.0, constant: 50)
        let l = NSLayoutConstraint(item: lblCase1, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 50)
        let r = NSLayoutConstraint(item: lblCase1, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -50)
        let h = NSLayoutConstraint(item: lblCase1, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.0, constant: 50)
        self.view.addConstraints([t, l, r, h])
        //△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△
        
        //Case2 ▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽
        view.addSubview(lblCase2)
        view.visualFormata(format: "H:|-50-[v0]-50-|",     views: lblCase2)
        view.visualFormata(format: "V:|-[v0]-50-[v1(50)]", views: lblCase1, lblCase2)
        //△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△
        
        //Case3 ▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽
        view.addSubview(lblCase3)
        NSLayoutConstraint.activate([
            lblCase3.topAnchor.constraint(equalTo: lblCase2.bottomAnchor, constant: 50),
            lblCase3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            lblCase3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            lblCase3.heightAnchor.constraint(equalToConstant: 50),
        ])
        //△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△
        
        //Case4 ▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽▽
        view.addSubview(lblCase4)
        NSLayoutConstraint.activate([
            lblCase4.T.constraint(equalTo: lblCase3.B, constant: 50),
            lblCase4.L.constraint(equalTo: view.L, constant: 50),
            lblCase4.R.constraint(equalTo: view.R, constant: -50),
            lblCase4.H.constraint(equalToConstant: 50),
        ])
        //△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△△
    }


}


extension UIView {
    
    func visualFormata(format : String, views: UIView ...){
        var viewsDictionary = [String: UIView]()
        for(index, view) in views.enumerated(){
            view.translatesAutoresizingMaskIntoConstraints = false
            let key = "v\(index)"
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

extension UIView {

    @available(iOS 9.0, *)
    public var L: NSLayoutXAxisAnchor {
        return self.leadingAnchor
    }
    @available(iOS 9.0, *)
    public var R: NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
    @available(iOS 9.0, *)
    public var T: NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    @available(iOS 9.0, *)
    public var B: NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    @available(iOS 9.0, *)
    public var W: NSLayoutDimension {
        return self.widthAnchor
    }
    @available(iOS 9.0, *)
    public var H: NSLayoutDimension {
        return self.heightAnchor
    }
    @available(iOS 9.0, *)
    public var Y: NSLayoutYAxisAnchor {
        return self.centerYAnchor
    }
    @available(iOS 9.0, *)
    public var X: NSLayoutXAxisAnchor {
        return self.centerXAnchor
    }
    @available(iOS 9.0, *)
    public var SL: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.leadingAnchor
        } else {
            return self.leadingAnchor
        }
    }
    @available(iOS 9.0, *)
    public var SR: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.trailingAnchor
        } else {
            return self.trailingAnchor
        }
    }
    @available(iOS 9.0, *)
    public var ST: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.topAnchor
        } else {
            return self.topAnchor
        }
    }
    @available(iOS 9.0, *)
    public var SB: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.bottomAnchor
        } else {
            return self.bottomAnchor
        }
    }
    @available(iOS 9.0, *)
    public var SW: NSLayoutDimension {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.widthAnchor
        } else {
            return self.widthAnchor
        }
    }
    @available(iOS 9.0, *)
    public var SH: NSLayoutDimension {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.heightAnchor
        } else {
            return self.heightAnchor
        }
    }

}

@available(iOS 9.0, *)
extension UILayoutGuide {
    public var L: NSLayoutXAxisAnchor {
        return self.leadingAnchor
    }
    public var R: NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
    public var T: NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    public var B: NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    public var W: NSLayoutDimension {
        return self.widthAnchor
    }
    public var H: NSLayoutDimension {
        return self.heightAnchor
    }
    public var Y: NSLayoutYAxisAnchor {
        return self.centerYAnchor
    }
    public var X: NSLayoutXAxisAnchor {
        return self.centerXAnchor
    }
}

