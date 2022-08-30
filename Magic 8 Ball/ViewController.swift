//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        let Respostas = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]// possiveis respostas

    @IBOutlet weak var Bola: UIImageView! // imagem da bola inicial
    override func viewDidLoad() {
        super.viewDidLoad()
        Bola.image = #imageLiteral(resourceName: "ball1") //escolha da imagem inicial padrão
    }
    
    @IBAction func AskMe(_ sender: UIButton)  //aperto do botão
    {
        let RespostaEscolhida = Int.random(in: 0...4) // sorteio de respostas
        Bola.image = Respostas [RespostaEscolhida] //mostra a imagem da bola escolhida
    }
    
}
