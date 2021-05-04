//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (A, B, W) = «readInts()
	
	let Wg: Int = W * 1000
	var minCount: Int = Int.max
	var maxCount: Int = Int.min
	
	// O(10^6)
	// 1000_000 == max W
	for n in 1...1000_000 {
		guard A * n <= Wg, B * n >= Wg else { continue }
		
		minCount = min(minCount, n)
		maxCount = max(maxCount, n)
	}
	
	print(minCount == Int.max ? "UNSATISFIABLE" : "\(minCount) \(maxCount)")
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
