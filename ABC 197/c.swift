//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	let A: [Int] = readInts()
	
	guard N > 1 else {
		print(A.first!)
		return
	}
	
	var result: Int = Int.max
	
	for i in 0..<(1 << (N - 1)) {
		var splitIndex: [Int] = []
		
		// O(n-1)
		for j in 0..<(N - 1) {
			if i & (1 << j) > 0 { splitIndex.append(j) }
		}
		
		guard !splitIndex.isEmpty else { continue }
		
		var modifA: [[Int]] = []
		var latestIndex: Int = 0
		
		for index in splitIndex {
			modifA.append(Array<Int>(A[latestIndex...index]))
			latestIndex = index + 1
		}
		
		modifA.append(Array<Int>(A[latestIndex..<A.endIndex]))
		
		let ors: [Int] = modifA.map { nums in
			return nums.reduce(0, |)
		}
		
		let xor: Int = ors.reduce(0, ^)
		
		result = min(result, xor)
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


// MARK: Convert Array to Tuple
//
prefix operator «
prefix func « <T> (a: [T]) -> (T, T) { (a[0], a[1]) }
prefix func « <T> (a: [T]) -> (T, T, T) { (a[0], a[1], a[2]) }
prefix func « <T> (a: [T]) -> (T, T, T, T) { (a[0], a[1], a[2], a[3]) }
prefix func « <T> (a: [T]) -> (T, T, T, T, T) { (a[0], a[1], a[2], a[3], a[4]) }
