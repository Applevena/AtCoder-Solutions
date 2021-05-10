//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (_, M) = «readInts()
	let balls: [(A: Int, B: Int)] = (0..<M).map { _ in
		return «readInts()
	}
	
	let K: Int = readInt()
	
	let persons: [(C: Int, D: Int)] = (0..<K).map { _ in
		return «readInts()
	}
	
	
	var result: Int = 0
	
	// bit全探索
	// O(2^K * (K + N))
	for i in 0..<(1 << K) {
		var set: Set<Int> = []
		
		// O(K)
		for j in 0..<K {
			if i & (1 << j) > 0 {
				set.insert(persons[j].C)
			} else {
				set.insert(persons[j].D)
			}
		}
		
		// O(N)
		let count: Int = balls
			.filter { a, b in
				// O(1)
				return set.contains(a) && set.contains(b)
			}
			.count
		
		result = max(result, count)
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
