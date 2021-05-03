//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (H, W, X, Y) = «readInts()
	let dirs: [(x: Int, y: Int)] = [(x: 0, y: 1), (x: 1, y: 0), (x: 0, y: -1), (x: -1, y: 0)]
	
	let grid: [[String]] = (0..<H).map { _ in
		return readJoinedLine()
	}
	
	var count: Int = 1
	
	// search
	for dir in dirs {
		var queue: ArraySlice<(x: Int, y: Int)> = [(x: X - 1, y: Y - 1)]
		
		move :while let (x, y) = queue.popFirst() {
			let nextX = x + dir.x
			let nextY = y + dir.y
			
			guard 0..<H ~= nextX, 0..<W ~= nextY, grid[nextX][nextY] == "." else { break move }
			
			count += 1
			queue.append((x: nextX, y: nextY))
		}
	}
	
	print(count)
}


solution()


// MARK: Utils
//
func readLine<T: StringProtocol>(separatedBy separator: T) -> [String] { readLine()!.components(separatedBy: separator) }

func readJoinedLine() -> [String] { readLine()!.map { String($0) } }

func readInt() -> Int { Int(readLine()!)! }

func readInts() -> [Int] { readLine()!.components(separatedBy: " ").map { Int($0)! } }


// MARK: Convert Array to Tuple
//
prefix operator «
prefix func « <T> (a: [T]) -> (T, T) { (a[0], a[1]) }
prefix func « <T> (a: [T]) -> (T, T, T) { (a[0], a[1], a[2]) }
prefix func « <T> (a: [T]) -> (T, T, T, T) { (a[0], a[1], a[2], a[3]) }
prefix func « <T> (a: [T]) -> (T, T, T, T, T) { (a[0], a[1], a[2], a[3], a[4]) }
