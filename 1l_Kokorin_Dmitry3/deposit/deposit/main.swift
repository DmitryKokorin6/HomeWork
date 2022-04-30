import Foundation

let deposit:Double = 1000
let prosent:Double = 5
let year:Double = [1, 2, 3, 4,5]
let deposit1:Double = deposit

for years in year {
    
    deposit1 = deposit + deposit * year(prosent/100)
    
}
 
