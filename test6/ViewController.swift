//
//  ViewController.swift
//  test6
//
//  Created by DIRECTOR on 10.09.2021.
//
import Foundation
import UIKit
import RealmSwift
import SnapKit  




class ViewController: UIViewController {
    
    let realm = try! Realm()
    
    
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
        
        let results = realm.objects(HealthsOne.self)
        playerOneLife=results[results.count-1].healthOne
        
        let results2 = realm.objects(HealthsTwo.self)
        playerTwoLife=results2[results2.count-1].healthTwo
        
        updatePlayerOneLife()
        updatePlayerTwoLife()
        
    }

    func showAlertButtonTapped1() {
        let alert = UIAlertController(title: "Player1 your health point less than 1. You lose.", message: "Players life's values restored to their original state", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        resetAllHp()
    }
    
    func showAlertButtonTapped2() {
        let alert = UIAlertController(title: "Player2 your health point less than 1. You lose.", message: "Players life's values restored to their original state", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        resetAllHp()
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
        
        let value = HealthsOne(value: [Int(playerOneLife)])
        try! self.realm.write {
            self.realm.add(value)
            print(value)
        }
        
    }
    
    
    @IBAction func playerOneMinusOneHealth(_ sender: Any) {
        playerOneLife-=1


        if playerOneLife<1 {
            playerOneLife=0
            updatePlayerOneLife()
            sleep(3)
            showAlertButtonTapped1()
        }
        else { updatePlayerOneLife()
        }
     
        let value = HealthsOne(value: [Int(playerOneLife)])
        try! self.realm.write {
            self.realm.add(value)
            print(value)
        }
    }
    
    
    
    @IBAction func playerTwoPlusOneHealth(_ sender: Any) {
        playerTwoLife+=1
        updatePlayerTwoLife()
        
        
        let value2 = HealthsTwo(value: [Int(playerTwoLife)])
        try! self.realm.write {
            self.realm.add(value2)
            print(value2)
        }
        
        
    }
    
    
    @IBAction func playerTwoMinusOneHealth(_ sender: Any) {
        playerTwoLife-=1
        
        if playerTwoLife<1 {
            playerTwoLife=0
            updatePlayerTwoLife()
            sleep(3)
            showAlertButtonTapped2()
        }
        else { updatePlayerTwoLife()
        }
        
        let value2 = HealthsTwo(value: [Int(playerTwoLife)])
        try! self.realm.write {
            self.realm.add(value2)
            print(value2)
        }
        
    }
    
    func resetAllHp() {
        playerOneLife=20
        playerTwoLife=20
        updatePlayerOneLife()
        updatePlayerTwoLife()
        
        
        
    }
    
    @IBAction func reset(_ sender: Any) {
        playerOneLife=20
        playerTwoLife=20
        updatePlayerOneLife()
        updatePlayerTwoLife()
        
        
        
        let value1 = HealthsOne(value: [playerOneLife])
        try! self.realm.write {
            self.realm.add(value1)
            print("after reset \(value1)")
        }
        
        
        let value2 = HealthsTwo(value: [playerTwoLife])
        try! self.realm.write {
            self.realm.add(value2)
            print("after reset \(value2)")
            
        }
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
