//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N = readInt()
	let A = readInts()
	let B = readInts()
	let C = readInts()
	
	var a: [Int] = .init(repeating: 0, count: N + 1)
	var b: [[Int]] = .init(repeating: [], count: N + 1)
	var c: [Int] = .init(repeating: 0, count: N + 1)
	
	A.forEach { a[$0] += 1 }
	
	B.indices.forEach {
		b[B[$0]].append($0)
	}
	
	C.forEach {
		c[$0] += 1
	}
	
	var result: Int = 0
	
	for aa in a.indices {
		for cj in b[aa] {
			result += a[aa] * c[cj + 1]
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
