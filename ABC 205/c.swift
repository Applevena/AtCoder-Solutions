//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (a, b, c) = «readInts()
	var result = ""
	
	switch c % 2 {
		case 0:
			if abs(a) == abs(b) {
				result = "="
			} else {
				result = abs(a) > abs(b) ? ">" : "<"
			}
		case 1:
			if a == b {
				result = "="
			} else {
				result = a > b ? ">" : "<"
			}
		default:
			fatalError()
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
