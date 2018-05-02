import AppKit

//: Heads or Tails

// 1. Create a function tossCoin() -> String
// Have this function print "Tossing a Coin!"
// Next have the function randomly pick either "Heads" or "Tails"
// Have the function print the result
// Finally, have the function return the result

func tossCoin() -> String{
	print("Tossing a coin!")
	let coinToss = Int(arc4random_uniform(UInt32(2)))
	if coinToss == 0{
		print("Heads")
		let result = "Heads"
		return result
	}
	else{
		print("Tails")
		let result = "Tails"
		return result
	}
}


// 2. Now create another function tossMultipleCoins(Int) -> Double
// Have this function call the tossCoin function multiple times based on the Integer input
// Have the function return a Double that reflects the ratio of head toss to total toss

func tossMultipleCoins(someInt: Int) -> Double{
	var tails: Double = 0
	var heads: Double = 0
	for _ in 1...someInt{
		let result = tossCoin()
		if result == "Tails"{
			tails += 1
		}
		else if result == "Heads"{
			heads += 1
		}
	}
	let ratio: Double = heads/(heads + tails)
	print(ratio)
	return ratio
}

_ = tossMultipleCoins(someInt: 5)
