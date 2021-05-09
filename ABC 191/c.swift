//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (H, W) = «readInts()
	let grid: [[String]] = (0..<H).map { _ in
		readJoinedLine()
	}
	
	var result: Int = 0
	
	// O(N^2)
	for h in 0..<(H - 1) {
		for w in 0..<(W - 1) {
			var count: Int = 0
			
			if grid[h][w] == "#" { count += 1 }
			
			if grid[h][w + 1] == "#" { count += 1 }
			
			if grid[h + 1][w] == "#" { count += 1 }
			
			if grid[h + 1][w + 1] == "#" { count += 1 }
			
			guard count == 1 || count == 3 else { continue }
			
			result += 1
		}
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
