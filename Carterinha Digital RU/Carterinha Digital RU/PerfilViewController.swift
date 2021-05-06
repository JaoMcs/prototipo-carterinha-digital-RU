//
//  PerfilViewController.swift
//  Carterinha Digital RU
//
//  Created by João Marcos on 12/12/20.
//

import UIKit

class PerfilViewController: UIViewController {

    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var matriculaLabel: UILabel!
    
    @IBOutlet weak var saldoLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    
    var aluno: Usuario?
    



    override func viewDidLoad() {
 //       let meuAluno: Usuario = Usuario(nome: "Joao Marcos", matricula: "2016103308", saldo: 50.00, isAux: true, login: "joao.m", senha: "1234", isFunc: false)
        super.viewDidLoad()
        guard let meuAluno = aluno else {return}
        nomeLabel.text = meuAluno.nome
        matriculaLabel.text = meuAluno.matricula

        if meuAluno.isAux == false{
            valorLabel.text? = "R$ 50,00"
            
        }
        else{
            valorLabel.textColor = UIColor(red: 0, green: 255, blue: 0, alpha: 100)
            valorLabel.text = "Possui Auxilio Alimentação"
            saldoLabel.isHidden = true
        }

        
        
        // Teoricamente teria algo parecido para a foto
    }
}
