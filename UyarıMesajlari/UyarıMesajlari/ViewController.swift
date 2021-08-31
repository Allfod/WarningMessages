//
//  ViewController.swift
//  UyarıMesajlari
//
//  Created by Vural ÇETİN on 6.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     
    @IBAction func signUpTiklandi(_ sender: Any) {
    
    
        
            
        if emailTextField.text == "" {
            alertOlustur(titlegGirdisi:"Hata" , messageGirdisi: "Email Girilmedi")
            
        } else if passwordTextField.text == "" {
            alertOlustur(titlegGirdisi: "Hata", messageGirdisi: "Şifre girilmedi")
            
        } else if passwordTextField.text != password2TextField.text{
            alertOlustur(titlegGirdisi: "Hata", messageGirdisi: "Şifreler uyuşmuyor")
            
        } else {
            alertOlustur(titlegGirdisi: "Tebrikler", messageGirdisi: "Kullanıcı oluşturuldu")
        }
        
    }
    
    func alertOlustur(titlegGirdisi : String , messageGirdisi : String) {
        let uyariMesaji = UIAlertController(title: titlegGirdisi, message: messageGirdisi , preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
            print("OK Button Tıklandı")
            //ok butonuna tıklanınca olacaklar kısmı
        }
        
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
        
        
    }
    
}

