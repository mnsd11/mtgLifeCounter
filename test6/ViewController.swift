//
//  ViewController.swift
//  test6
//
//  Created by DIRECTOR on 10.09.2021.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    let colors : [UIColor] = [.blue, .darkGray]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.view.backgroundColor=UIColor.gray
        
        
        playerTwoLifeLabel.transform=CGAffineTransform(rotationAngle: CGFloat.pi)
        playerTwoPlusHealthLabel.transform=CGAffineTransform(rotationAngle: CGFloat.pi)
        playerTwoMinusHealthLabel.transform=CGAffineTransform(rotationAngle: CGFloat.pi)
        
        playerOnePlusHealth.layer.cornerRadius=9;
        playerOneHealth.layer.cornerRadius=9;
        playerOneMinusHealth.layer.cornerRadius=9;
        playerTwoHealth.layer.cornerRadius=9;
        playerTwoPlusHealth.layer.cornerRadius=9;
        playerTwoMinusHealth.layer.cornerRadius=9;
        resetLifes.layer.cornerRadius=9;
        playerOneLife=20
        playerTwoLife=20
        updatePlayerOneLife()
        updatePlayerTwoLife()
        
    }

    
    @IBOutlet weak var playerTwoMinusHealthLabel: UILabel!
    
    @IBOutlet weak var playerTwoPlusHealthLabel: UILabel!
    
    @IBOutlet weak var resetLifes: UIButton!
    
    @IBOutlet weak var playerTwoMinusHealth: UIButton!
    
    @IBOutlet weak var playerTwoPlusHealth: UIButton!
    
    
    @IBOutlet weak var playerTwoHealth: UIButton!
    
    
    
    @IBOutlet weak var playerOneLifeLabel: UILabel!
    
    @IBOutlet weak var playerTwoLifeLabel: UILabel!
    
    
    @IBOutlet weak var playerOneMinusHealth: UIButton!
    
    
    @IBOutlet weak var playerOneHealth: UIButton!
    
    
    @IBOutlet weak var playerOnePlusHealth: UIButton!
    
    
    @IBAction func playerOnePlusHealth(_ sender: Any) {
    }
    
    
    @IBAction func playerOnePlusOneHealth(_ sender: Any) {
        playerOneLife+=1
                updatePlayerOneLife()
    }
    
    
    @IBAction func playerOneMinusOneHealth(_ sender: Any) {
        playerOneLife-=1
                updatePlayerOneLife()
    }
    
    
    
    @IBAction func playerTwoPlusOneHealth(_ sender: Any) {
        playerTwoLife+=1
                updatePlayerTwoLife()
    }
    
    
    @IBAction func playerTwoMinusOneHealth(_ sender: Any) {
        playerTwoLife-=1
                updatePlayerTwoLife()
        
    }
    
    
    @IBAction func reset(_ sender: Any) {
        playerOneLife=20
        playerTwoLife=20
        updatePlayerOneLife()
        updatePlayerTwoLife()
    }
    
    
    var playerOneLife: Int = 20
    var playerTwoLife: Int = 20
    
    func updatePlayerOneLife() {
            playerOneLifeLabel.text="\(playerOneLife)"
        }
       
        func updatePlayerTwoLife() {
            playerTwoLifeLabel.text="\(playerTwoLife)"
        }

    
    
    
}

