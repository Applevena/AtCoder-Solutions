//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func g1(_ x: Int) -> Int {
	let str = String(x)
	let arr = str.sorted(by: { $0 > $1 }).map { String($0) }
	
	return Int(arr.joined())!
}

func g2(_ x: Int) -> Int {
	let str = String(x)
	let arr = str.sorted(by: { $0 < $1 }).map { String($0) }
	
	return Int(arr.joined())!
}

func f(_ x: Int) -> Int {
	return g1(x) - g2(x)
}

func solution() {
	let (N, K) = «readInts()
	
	var result: Int = N
	
	// O(K)
	for _ in 0..<K {
		guard result != 0 else { break }
		
		result = f(result)
	}
	
	print(result)
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
