//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	let A: [Int] = readInts()
	// 累積和
	var cusum: [Int] = [Int](repeating: A[0], count: N)
	
	// O(n)
	cusum.indices.forEach { index in
		if index > 0 { cusum[index] = cusum[index - 1] + A[index]}
	}
	
	var result: Int = 0
	
	// O(n)
	for i in A.indices {
		// S = (N - 1) * Σ(Ai * Ai) - 2 * Σ(Ai * CUSUM[i - 1])
		result += (N - 1) * A[i] * A[i] - 2 * A[i] * (i - 1 >= 0 ? cusum[i - 1] : 0)
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
