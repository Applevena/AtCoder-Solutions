//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
struct Person {
	var num: Int = 0
	var score: Int
}

func solution() {
	let _: Int = readInt()
	let A = readInts()
	
	// O(2^N)
	var remains: [Person] = A.indices.map { Person(num: $0 + 1, score: A[$0])}
	
	// O(N)
	while remains.count > 2 {
		var winners: [Person] = []
		
		// O(?)
		for i in stride(from: 0, to: remains.count - 1, by: 2) {
			winners.append(remains[i].score > remains[i + 1].score ? remains[i] : remains[i + 1])
		}
		
		remains = winners
	}
	
	print(remains.min(by: { $0.score < $1.score })!.num)
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
