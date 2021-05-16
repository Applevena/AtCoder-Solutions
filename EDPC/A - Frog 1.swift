//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	let h: [Int] = readInts()
	
	var dp: [Int] = [Int](repeating: 0, count: N)
	
	// 初期化
	dp[1] = abs(h[1] - h[0])
	
	// dp
	// O(N)
	for index in 0..<N {
		guard index > 1 else { continue }
		
		let move1 = dp[index - 1] + abs(h[index] - h[index - 1])
		let move2 = dp[index - 2] + abs(h[index] - h[index - 2])
		
		dp[index] = min(move1, move2)
	}
	
	print(dp.last!)
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
