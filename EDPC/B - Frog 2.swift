//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (N, K) = «readInts()
	let h: [Int] = readInts()
	
	var dp: [Int] = [Int](repeating: .max, count: N)
	
	// 初期化
	dp[0] = 0
	
	// dp
	// O(N*K)
	main: for index in 0..<N {
		sub: for plus in 1...K {
			let next: Int = index + plus
			
			guard 0..<N ~= next else { break sub }
			
			let cost = dp[index] + abs(h[next] - h[index])
			
			dp[next] = min(dp[next], cost)
		}
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
