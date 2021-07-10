//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (n, q) = «readInts()
	var pairs: [(a: Int, b: Int)] = []
	
	for _ in 0..<(n - 1) {
		pairs.append(«readInts())
	}
	
	var dirs: [Set<Int>] = [Set<Int>](repeating: [], count: n + 1)
	
	for (a, b) in pairs {
		dirs[a].insert(b)
		dirs[b].insert(a)
	}
	
	var nexts: Set<Int> = [1]
	var visited: Set<Int> = [1]
	var counts: [Int] = [Int](repeating: 0, count: n + 1)
	var memo = 1
	
	while visited.count < n {
		var set: Set<Int> = []
		
		for current in nexts {
			for dir in dirs[current] {
				guard !visited.contains(dir) else { continue }
				
				counts[dir] = memo
				set.insert(dir)
				visited.insert(dir)
			}
		}
		
		memo += 1
		nexts = set
	}
	
	for _ in 0..<q {
		let (c, d) = «readInts()
		let move = counts[d] - counts[c]
		
		print(move % 2 == 0 ? "Town" : "Road")
	}
	
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

// 実行時間 993ms
