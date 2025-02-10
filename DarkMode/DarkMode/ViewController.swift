//
//  ViewController.swift
//  DarkMode
//
//  Created by Yasemin salan on 10.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //belirli bir viewController da sadece light mode çalışcak demek istiyorsak aşağıdaki kod çalıştırılmalıdır.telefon dark modda çalışsa bile çalıştırıldığı viewController light modda çalışır tam terside olabilir.bu view kontrollerın haricindeki viewControllerlar telefonun moduna göre çalışır.
        overrideUserInterfaceStyle = .light
    }
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle

           if userInterfaceStyle == .dark {
               changeButton.tintColor = .white
           }
           else {
               changeButton.tintColor = .blue
           }
    }
    //dark mode ve light mode geçişlerini en iyi şekilde algılayıp uygulanmasını sağlar.uygulama çalıştığı sırada dark moda geçtiyse anında algılar
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
           let userInterfaceStyle = traitCollection.userInterfaceStyle
                       
                       if userInterfaceStyle == .dark {
                           changeButton.tintColor = UIColor.white
                       } else {
                           changeButton.tintColor = UIColor.blue
                       }
       }


}

