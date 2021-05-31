//
//  ViewController.swift
//  BarbecueSkewers
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//


/*
 You are in charge of the barbecue grill. A vegetarian skewer is a skewer that has only vegetables (-o). A non-vegetarian skewer is a skewer with at least one piece of meat (-x).

 For example, the grill below has 4 non-vegetarian skewers and 1 vegetarian skewer (the one in the middle).

 ["--xo--x--ox--",
 "--xx--x--xx--",
 "--oo--o--oo--",      <<< vegetarian skewer
 "--xx--x--ox--",
 "--xx--x--ox--"]
 Given a BBQ grill, write a function that returns [# vegetarian skewers, # non-vegetarian skewers]. For example above, the function should return [1, 4].

 Examples

 bbqSkewers( [
   "--oooo-ooo--",
   "--xx--x--xx--",
   "--o---o--oo--",
   "--xx--x--ox--",
   "--xx--x--ox--"
 ]) ➞ [2, 3]

 bbqSkewers([
   "--oooo-ooo--",
   "--xxxxxxxx--",
   "--o---",
   "-o-----o---x--",
   "--o---o-----"
 ]) ➞ [3, 2]
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
  /*  print(self.bbqSkewers( [
            "--oooo-ooo--",
            "--xx--x--xx--",
            "--o---o--oo--",
            "--xx--x--ox--",
            "--xx--x--ox--"
          ]))*/
        
        print(self.bbqSkewers([
            "--oooo-ooo--",
            "--xxxxxxxx--",
            "--o---",
            "-o-----o---x--",
            "--o---o-----"
          ]))
    }

    func bbqSkewers(_ grill: [String]) -> [Int] {
        var resultArray: [Int] = []
        var veg: Int = 0
        var nonVeg: Int = 0
        var equalO: Int = 0
        var equalX: Int = 0
        for n in grill{
            for m in n{
                if m == "o"{
                   equalO = equalO + 1
                }
                if m == "x"{
                   equalX = equalX + 1
                }
            }
            if equalO != 0 && equalX == 0 {
                veg = veg + 1
            }
            
            if equalO ==  0 && equalX != 0 {
            nonVeg = nonVeg + 1
            }
            
            if equalO != 0 && equalX != 0 {
                nonVeg = nonVeg + 1
            }
     
            equalO = 0
            equalX = 0
        }
        resultArray.append(veg)
        resultArray.append(nonVeg)
        return resultArray
    }
    

}

