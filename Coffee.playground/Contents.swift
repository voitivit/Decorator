import UIKit
//protocol Character {
//    var health: Double { get }
//}
//
//class Elf: Character {
//    var health: Double {
//        return 10.0
//    }
//}
//
//class Orc: Character {
//    var health: Double {
//        return 20.0
//    }
//}
//protocol CharacterDecorator: Character {
//    var base: Character { get }
//    init(base: Character)
//}
//
//
//
//
//class Veteran: CharacterDecorator {
//    let base: Character
//
//    var health: Double {
//        return base.health + 50.0
//    }
//
//    required init(base: Character) {
//        self.base = base
//    }
//}
//
//class Boss: CharacterDecorator {
//    let base: Character
//
//    var health: Double {
//        return base.health + 500.0
//    }
//
//    required init(base: Character) {
//        self.base = base
//    }
//}
//
//
//let elf = Elf()
//let veteranElf = Veteran(base: elf)
//let bossElf = Boss(base: elf)
//print(elf.health)
//print(veteranElf.health)
//print(bossElf.health)
//
protocol Coffee {
    var cost:Int {get}
}

class SimpleCoffee: Coffee {
    var cost: Int {
        return 100
    }
}


protocol CoffeeWith: Coffee {
    var milk: Coffee {get}
    var sugar: Coffee {get}
    var iceCream: Coffee {get}
    init(milk: Coffee, sugar: Coffee, iceCream: Coffee)
}



class CoffeeWithMilk: CoffeeWith {
    var milk: Coffee
    
    var sugar: Coffee
    
    var iceCream: Coffee
    
    required init(milk: Coffee, sugar: Coffee, iceCream: Coffee) {
        self.milk = milk
        self.sugar = sugar
        self.iceCream = iceCream
    }
    
    var cost: Int {
      return  milk.cost + 30
    }
}

class CoffeeWithSugar: CoffeeWith {
    var milk: Coffee
    
    var sugar: Coffee
    
    var iceCream: Coffee
    
    required init(milk: Coffee, sugar: Coffee, iceCream: Coffee) {
        self.milk = milk
        self.sugar = sugar
        self.iceCream = iceCream
    }
    
    var cost: Int {
        return sugar.cost + 10
    }
}


class CoffeeWithIceCream: CoffeeWith {
    var milk: Coffee
    
    var sugar: Coffee
    
    var iceCream: Coffee
    
    required init(milk: Coffee, sugar: Coffee, iceCream: Coffee) {
        self.milk = milk
        self.sugar = sugar
        self.iceCream = iceCream
    }
    
    var cost: Int {
        return iceCream.cost + 90
    }
}

let coffee = SimpleCoffee()
//Кофе с молоком
let coffeeWithMilk = CoffeeWithMilk(milk: coffee, sugar: coffee, iceCream: coffee)
print("Стоимость кофе с молоком, будет составлять: \(coffeeWithMilk.cost) рублей")

//Кофе с Сахаром
let coffeeWithSugar = CoffeeWithSugar(milk: coffee, sugar: coffee, iceCream: coffee)
print("Стоимость кофе с сахаром, будет составлять: \(coffeeWithSugar.cost) рублей")

//Кофе с мороженным
let coffeWithIceCream = CoffeeWithIceCream(milk:coffee , sugar: coffee, iceCream: coffee)
print("Стоимость кофе с морооженным, будет составлять: \(coffeWithIceCream.cost) рублей")

