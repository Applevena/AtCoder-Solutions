//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	let points: [(x: Int, y: Int)] = (0..<N).map { _ in «readInts() }
	
	var result = 0
	
	// O(NlogN)
	for i in 0..<(N - 1) {
		let a = points[i]
		
		for j in (i + 1)..<N {
			let b = points[j]
			
			let lny = abs(b.y - a.y)
			let lnx = abs(b.x - a.x)
			
			if 0...lnx ~= lny {
				result += 1
			}
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
