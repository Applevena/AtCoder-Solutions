//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (n, m) = «readInts()
	
	var roots = Array<Set<Int>>(repeating: [], count: n)
	var counts: [Int] = [Int](repeating: 0, count: n)
	
	for i in 0..<n {
		roots[i].insert(i)
	}
	
	for _ in 0..<m {
		let (a, b) = «readInts()
		
		roots[a - 1].insert(b - 1)
	}
	
	for i in 0..<n {
		var visited: [Bool] = [Bool](repeating: false, count: n)
		var nexts: Set<Int> = [i]
		
		while let current = nexts.popFirst() {
			guard !visited[current] else { continue }
			
			visited[current] = true
			counts[i] += 1
			
			roots[current].forEach { nexts.insert($0) }
		}
	}
	
	let result = counts.reduce(0, +)
	
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
