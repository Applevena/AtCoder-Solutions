//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	let happiness: [(a: Int, b: Int, c: Int)] = (0..<N).map { _ in
		return «readInts()
	}
	
	var dp: [(a: Int, b: Int, c: Int)] = .init(repeating: (a: 0, b: 0, c: 0), count: N)
	
	// 初期化
	dp[0] = happiness[0]
	
	// dp
	// O(N)
	for index in 0..<N {
		guard index > 0 else { continue }
		
		let hA: Int = max(dp[index - 1].b, dp[index - 1].c) + happiness[index].a
		let hB: Int = max(dp[index - 1].a, dp[index - 1].c) + happiness[index].b
		let hC: Int = max(dp[index - 1].a, dp[index - 1].b) + happiness[index].c
		
		dp[index] = (a: hA, b: hB, c: hC)
	}
	
	print(max(dp.last!.a, dp.last!.b, dp.last!.c))
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
