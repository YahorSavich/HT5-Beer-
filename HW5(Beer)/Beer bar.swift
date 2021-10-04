//
//  Beer bar.swift
//  HW5(Beer)
//
//  Created by Виктория Савич on 8.09.21.
//Singletone
// quantity = количество л
// reveneuOfValue = количество в остатке



class BeerBar {
    static var shared: BeerBar = BeerBar()
    let name: String = "Alivaria"
    var price: Int = 2
    var reveneu: Int = 68
    var sold: Int = 32
    private init() {}
    
    
    
    func soldBeer(sold: Int) -> Int {
        return reveneu - sold
    }
    
//    func earnings(earn: Int) -> Int {
//        return soldBeer(sold: <#T##Int#>) - sold
//    }
}
