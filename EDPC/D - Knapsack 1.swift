//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (N, W) = «readInts()
	
	var dp: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: W + 1), count: N + 1)
	
	for i in 1...N {
		let (w, v) = «readInts()
		
		for j in 0...W {
			if j >= w {
				dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - w] + v)
			} else {
				dp[i][j] = dp[i - 1][j]
			}
		}
	}
	
	print(dp.last!.last!)
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

// 回答時間 42min
