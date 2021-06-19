//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let n = readInt()
	let a = readInts()
	
	var counts: [Int: Int] = [:]
	
	a.forEach {
		if let _ = counts[$0] {
			counts[$0]! += 1
		} else {
			counts[$0] = 1
		}
	}
	
	var result = n * (n - 1)
	
	for count in counts {
		guard count.value > 1 else { continue }
		
		result -= count.value * ( count.value - 1 )
	}
	
	print(result / 2)
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

// 実行時間 810ms
// 回答時間 16min
