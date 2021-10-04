//
//  ViewController.swift
//  HW5(Beer)
//
//  Created by Виктория Савич on 8.09.21.
// проверка выручки в конце дня - сделано
//начало новой смены - обнуление счетчиков -
//проверка остатков - сделано

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var SoldBeer: UIButton!
    
    @IBOutlet weak var Earnings: UIButton!
    
    @IBOutlet weak var Shift: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    let beerBar = BeerBar.shared
    
        
        var result = beerBar.soldBeer(sold: beerBar.sold)
        print("Осталось \(result) литров(а) пивалитра пива \(beerBar.name).")
        
        var earnings = result * beerBar.price
        print("Выручка за день составила \(earnings) рублей(я).")
        
        var newShift = earnings - earnings
        print("На начало смены денег в кассе \(newShift) рублей.")
        
    }
    
    @IBAction func leftBeer(_ sender: Any) {
        result.text = "Осталось \(String(describing: result)) литров(а) пивалитра пива \(BeerBar.shared.name)."
    }
    
    @IBAction func procceds(_ sender: Any) {
        var earnings = result * beerBar.price
        result.text = "Выручка за день составила \(earnings) рублей(я)."
    }
    
    @IBAction func zeroingresult(_ sender: Any) {
    }
    
}
