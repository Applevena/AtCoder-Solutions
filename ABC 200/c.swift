//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let _: Int = readInt()
	let A: [Int] = readInts()
	
	var remCounts: [Int] = [Int](repeating: 0, count: 200)
	
	// O(N)
	A.forEach { a in
		remCounts[a % 200] += 1
	}
	
	var result: Int = 0
	
	// O(200)
	for remCount in remCounts {
		guard remCount >= 2 else { continue }
		
		result += remCount * (remCount - 1) / 2
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
