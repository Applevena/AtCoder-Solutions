//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let _ = readInt()
	let A: [Int] = readInts()
	let B: [Int] = readInts()
	
	let bottom = A.max()!
	let up = B.min()!
	
	let result = up - bottom + 1
	
	print(max(0, result))
}


solution()


// MARK: Utils
//
func readLine<T: StringProtocol>(separatedBy separator: T = " ") -> [String] { readLine()!.components(separatedBy: separator) }

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
