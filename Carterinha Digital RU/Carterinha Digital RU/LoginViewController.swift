//
//  LoginViewController.swift
//  Carterinha Digital RU
//
//  Created by João Marcos on 12/12/20.
//

import UIKit
import SafariServices

class LoginViewController: UIViewController {


    // UIOutilet
    @IBOutlet weak var loginTextfild: UITextField!
    @IBOutlet weak var senhaTextfild: UITextField!
    @IBOutlet weak var entrarButton: UIButton!
    @IBOutlet weak var esqueceuSenhaButton: UIButton!
    
    
    var aluno1: Usuario = Usuario(nome: "Joao", matricula: "2016", saldo: 00.00, isAux: true, login: "joao.m", senha: "1234", isFunc: false)
    var funcionario1: Usuario = Usuario(nome: "Roberto", matricula: "2016", saldo: 00.00, isAux: true, login: "joao.m", senha: "1234", isFunc: true)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        entrarButton.layer.cornerRadius = 8;
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Perfil1" {
            if let destVC = segue.destination as? UINavigationController,
               let nextViewController = destVC.topViewController as? PerfilViewController{
                nextViewController.aluno = self.aluno1
            }
        }
    }
    
    
    @IBAction func entrarAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Erro", message: "Krl, burro pra porra", preferredStyle: .alert)
        
        if loginTextfild.text != aluno1.login {
            alert.title = "Erro ao fazer o Login"
            alert.message = "O login informado está incorreto"
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)

            
        }
        else if  senhaTextfild.text != aluno1.senha{
            alert.title = "Erro ao fazer o Login"
            alert.message = "A senha informada está incorreta"
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        }
        else{
            print("Login Feito com Sucesso")
            let vc = storyboard?.instantiateViewController(identifier: "Perfil1") as! UINavigationController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
            
        }

    }
    
    @IBAction func esqueciAction(){
        let vc = SFSafariViewController(url: URL(string: "https://senha.ufes.br/site/recuperaCredenciais")!)
        self.present(vc, animated: true)
    }
}
