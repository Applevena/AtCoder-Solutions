//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
struct Friend: Hashable {
	var a, b: Int
}

func solution() {
	let (n, k) = «readInts()
	var friends: [Int: Int] = [:]
	var set = Set<Int>()
	
	for _ in 0..<n {
		let (a, b) = «readInts()
		
		if let _ = friends[a] {
			friends[a]! += b
		} else {
			friends[a] = b
		}
		
		set.insert(a)
	}
	
	let sorted = set.sorted()
	
	var current = 0
	var money = k
	
	for a in sorted {
		let store = money
		money -= a - current
		
		guard money >= 0 else {
			money = store
			break
		}
		
		money += friends[a]!
		current = a
	}
	
	current += money
	
	print(current)
}


solution()


// MARK: Utils
//
func readLine<T: StringProtocol>(separatedBy separator: T) -> [String] { readLine()!.components(separatedBy: separator) }

func readJoinedLine() -> [String] { readLine()!.map { String($0) } }

func readInt() -> Int { Int(readLine()!)! }

func readInts() -> [Int] { readLine()!.components(separatedBy: " ").map { Int($0)! } }

prefix operator «
prefix func « <T> (a: [T]) -> (T, T) { (a[0], a[1]) }
prefix func « <T> (a: [T]) -> (T, T, T) { (a[0], a[1], a[2]) }
prefix func « <T> (a: [T]) -> (T, T, T, T) { (a[0], a[1], a[2], a[3]) }
prefix func « <T> (a: [T]) -> (T, T, T, T, T) { (a[0], a[1], a[2], a[3], a[4]) }

