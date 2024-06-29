// Maximum profix with given weight limit

// https://youtu.be/oTTzNMHM05I?si=gNMI8DfPvWjfC0QA

//Knapsack problem 
import Foundation

struct Product{
    let profit : Int
    let weight : Int
    var profitByWeight : Double {
        Double(profit)/Double(weight)
    }
}
var AllProducts : [Product] = [
    Product(profit: 10, weight: 2),
    Product(profit: 5, weight: 3),
    Product(profit: 15, weight: 5),
    Product(profit: 7, weight: 7),
    Product(profit: 6, weight: 1),
    Product(profit: 18, weight: 4),
    Product(profit: 3, weight: 1),
]

let maxBagWeight = 15.0

//so here we can add a product with any fraction that's avaiable to get maximum profit with given bag weight limit

var productQuantityWithProfitByWeight = AllProducts.sorted{
    $0.profitByWeight > $1.profitByWeight
}
var maxProfit = 0.0
var currentWeight = 0.0
for (_,product) in productQuantityWithProfitByWeight.enumerated(){
    
   if currentWeight + Double(product.weight) <= maxBagWeight{
    currentWeight += Double(product.weight)
    maxProfit += Double(product.profit)
   }else{
    let fraction = maxBagWeight - currentWeight
    currentWeight +=  fraction
    maxProfit += (Double(product.profitByWeight) * fraction)
   }
}
print(maxProfit)

