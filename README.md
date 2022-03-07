# custom-bufferingSlider

## capture image
<img src="https://user-images.githubusercontent.com/43785575/157094193-d6b06026-3a40-4b7f-95bb-792dc278dbef.png" width="300" height="649">

<br>

## how to use
```swift
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
```
