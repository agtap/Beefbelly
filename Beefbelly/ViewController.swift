//
//  ViewController.swift
//  Beefbelly
//
//  Created by Agnes Otap on 7/9/18.
//  Copyright © 2018 Agnes Otap. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
// Intitial outlets
    
    
    @IBOutlet weak var cartLabel: UILabel!
    
    var tableArray: [String] = []
    
    var priceTotalArray: [Int] = []

    
// Making the Zeros into outlets
    
    @IBOutlet weak var classicCount: UILabel!
    @IBOutlet weak var bigMamaCount: UILabel!
    @IBOutlet weak var friedChickenCount: UILabel!
    @IBOutlet weak var grilledChickenCount: UILabel!
    @IBOutlet weak var kidsMealCount: UILabel!
    @IBOutlet weak var friesCount: UILabel!
    @IBOutlet weak var garlicFriesCount: UILabel!
    @IBOutlet weak var sodaCount: UILabel!
    @IBOutlet weak var waterCount: UILabel!
    @IBOutlet weak var beerCount: UILabel!
    @IBOutlet weak var wineCount: UILabel!
    @IBOutlet weak var margaritaCount: UILabel!
   
    
// Check out buttons
    
    
    @IBAction func refreshButton(_ sender: UIButton) {
        cartLabelUpdate()
    }
    
    
    @IBAction func checkOutButton(_ sender: UIButton) {
        checkoutDialog()
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
// Adding functions to the steppers
    
    @IBAction func classicStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        classicCount.text = String(stepperValue)
    }
    
    @IBAction func bigMamaStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        bigMamaCount.text = String(stepperValue)
    }
    
    @IBAction func friedChickenStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        friedChickenCount.text = String(stepperValue)
    }
    
    @IBAction func grilledChickenStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        grilledChickenCount.text = String(stepperValue)
    }
    
    @IBAction func kidsMealStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        kidsMealCount.text = String(stepperValue)
    }
    
    @IBAction func friesStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        friesCount.text = String(stepperValue)
    }
    
    @IBAction func garlicFriesStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        garlicFriesCount.text = String(stepperValue)
    }
    
    @IBAction func sodaStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        sodaCount.text = String(stepperValue)
    }
    
    @IBAction func waterStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        waterCount.text = String(stepperValue)
    }
    
    @IBAction func beerStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        beerCount.text = String(stepperValue)
    }
    
    @IBAction func wineStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        wineCount.text = String(stepperValue)
    }
    
    @IBAction func margaritaStep(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        margaritaCount.text = String(stepperValue)
    }
   
    
// Adding outlets to steppers for reseting the value later on
    
    @IBOutlet weak var classicStepOut: UIStepper!
    @IBOutlet weak var bigMamaStepOut: UIStepper!
    @IBOutlet weak var friedChickenStepOut: UIStepper!
    @IBOutlet weak var grilledChickenStepOut: UIStepper!
    @IBOutlet weak var kidsMealStepOut: UIStepper!
    @IBOutlet weak var friesStepOut: UIStepper!
    @IBOutlet weak var garlicFriesStepOut: UIStepper!
    @IBOutlet weak var sodaStepOut: UIStepper!
    @IBOutlet weak var waterStepOut: UIStepper!
    @IBOutlet weak var beerStepOut: UIStepper!
    @IBOutlet weak var wineStepOut: UIStepper!
    @IBOutlet weak var margaritaStepOut: UIStepper!
    
    
// Add to cart button functions
    
    @IBAction func classicAdd(_ sender: UIButton) {
        if classicCount.text != "0" {
            if let classicNum = Int(classicCount.text!) {
                let newString = "The Classic Burger x \(classicNum)     $\(classicNum * 5)"
                tableArray.append(newString)
                priceTotalArray.append(classicNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.classicCount.text = "0"
        }
        classicStepOut.value = 0
    }
    
    
    @IBAction func bigMamaAdd(_ sender: UIButton) {
        if bigMamaCount.text != "0" {
            if let bigMamaNum = Int(bigMamaCount.text!) {
                tableArray.append("Big Mama Burger x \(bigMamaNum)     $\(bigMamaNum * 7)")
                priceTotalArray.append(bigMamaNum * 7)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.bigMamaCount.text = "0"
        }
        bigMamaStepOut.value = 0
    }
    
    
    @IBAction func friedChickenAdd(_ sender: UIButton) {
        if friedChickenCount.text != "0" {
            if let friedChickenNum = Int(friedChickenCount.text!) {
                tableArray.append("Fried Chicken Sandwich x \(friedChickenNum)     $\(friedChickenNum * 5)")
                priceTotalArray.append(friedChickenNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.friedChickenCount.text = "0"
        }
        friedChickenStepOut.value = 0
    }
    
    @IBAction func grilledChickenAdd(_ sender: UIButton) {
        if grilledChickenCount.text != "0" {
            if let grilledChickenNum = Int(grilledChickenCount.text!) {
                tableArray.append("Grilled Chicken Sandwich x \(grilledChickenNum)     $\(grilledChickenNum * 5)")
                priceTotalArray.append(grilledChickenNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.grilledChickenCount.text = "0"
        }
        grilledChickenStepOut.value = 0
    }
    
    @IBAction func kidsMealAdd(_ sender: UIButton) {
        if kidsMealCount.text != "0" {
            if let kidsMealNum = Int(kidsMealCount.text!) {
                tableArray.append("Kids Meal x \(kidsMealNum)     $\(kidsMealNum * 5)")
                priceTotalArray.append(kidsMealNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.kidsMealCount.text = "0"
        }
        kidsMealStepOut.value = 0
    }
    
    @IBAction func friesAdd(_ sender: UIButton) {
        if friesCount.text != "0" {
            if let friesNum = Int(friesCount.text!) {
                tableArray.append("Sea Salt & Pepper Fries x \(friesNum)     $\(friesNum * 2)")
                priceTotalArray.append(friesNum * 2)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.friesCount.text = "0"
        }
        friesStepOut.value = 0
    }
    
    @IBAction func garlicFriesAdd(_ sender: UIButton) {
        if garlicFriesCount.text != "0" {
            if let garlicFriesNum = Int(garlicFriesCount.text!) {
                tableArray.append("Garlic Parm Fries x \(garlicFriesNum)     $\(garlicFriesNum * 3)")
                priceTotalArray.append(garlicFriesNum * 3)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.garlicFriesCount.text = "0"
        }
        garlicFriesStepOut.value = 0
    }
  
    @IBAction func sodaAdd(_ sender: UIButton) {
        if sodaCount.text != "0" {
            if let sodaNum = Int(sodaCount.text!) {
                tableArray.append("Soda x \(sodaNum)     $\(sodaNum * 2)")
                priceTotalArray.append(sodaNum * 2)
                UserDefaults.standard.set(tableArray, forKey: "Cart")
            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.sodaCount.text = "0"
        }
        sodaStepOut.value = 0
    }
    
    @IBAction func waterAdd(_ sender: UIButton) {
        if waterCount.text != "0" {
            if let waterNum = Int(waterCount.text!) {
                tableArray.append("Water x \(waterNum)     $0")
                UserDefaults.standard.set(tableArray, forKey: "Cart")

            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.waterCount.text = "0"
        }
        waterStepOut.value = 0
    }
    
    @IBAction func beerAdd(_ sender: UIButton) {
        if beerCount.text != "0" {
            if let beerNum = Int(beerCount.text!) {
                tableArray.append("Draft Beer x \(beerNum)     $\(beerNum * 5)")
                priceTotalArray.append(beerNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")

            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.beerCount.text = "0"
        }
        beerStepOut.value = 0
    }
    
    
    @IBAction func wineAdd(_ sender: UIButton) {
        if wineCount.text != "0" {
            if let wineNum = Int(wineCount.text!) {
                tableArray.append("Wine x \(wineNum)     $\(wineNum * 5)")
                priceTotalArray.append(wineNum * 5)
                UserDefaults.standard.set(tableArray, forKey: "Cart")

            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.wineCount.text = "0"
        }
        
    }
    
    @IBAction func margaritaAdd(_ sender: UIButton) {
        if margaritaCount.text != "0" {
            if let margaritaNum = Int(margaritaCount.text!) {
                tableArray.append("Margarita x \(margaritaNum)     $\(margaritaNum * 5)")
                priceTotalArray.append(margaritaNum * 5)
                
                UserDefaults.standard.set(tableArray, forKey: "Cart")

            }
            showInputDialog()
        }
        DispatchQueue.main.async {
            self.margaritaCount.text = "0"
        }
    }
    
    
// Cart view refresh function
    
    func cartLabelUpdate() {
        
        let sum = priceTotalArray.reduce(0) { $0 + $1 }
        DispatchQueue.main.async {
            self.totalLabel.text = "Total: \(String(sum))"
        }
        print(tableArray)
        let tableArrayRetrieved: [String] = UserDefaults.standard.array(forKey: "Cart")! as! [String]
        for addLabel in tableArrayRetrieved {
            DispatchQueue.main.async {
                self.cartLabel!.text! += "\n \(addLabel)"
            }
        }
    }

    
// Dialog box for adding to cart
    
    func showInputDialog() {
        let alertController = UIAlertController(title: "Success", message: "Items have been added to your cart.", preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "OK", style: .default) { (_) in
        }
        alertController.addAction(confirmAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func checkoutDialog() {
        let alertController = UIAlertController(title: "Payment Required", message: "Please input your credit card information.", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction!) in
    
        }
        
        let confirmAction = UIAlertAction(title: "Submit", style: .default) { (_) in
        }
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

