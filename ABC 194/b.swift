//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N = readInt()
	let times: [(A: Int, B: Int)] = (0..<N).map { _ in «readInts() }
	
	var result: Int = Int.max
	
	// O(n^2)
	for i in times.indices {
		for j in times.indices {
			if i == j {
				result = min(result, times[i].A + times[i].B)
			} else {
				result = min(result, max(times[i].A, times[j].B))
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
