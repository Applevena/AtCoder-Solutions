//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func sum(_ n: Int) -> Int {
	guard n > 1 else { return 1 }
	
	return sum(n - 1) * n
}

func solution() {
	var p = readInt()
	var count = 0
	
	for i in 0..<10 {
		let s = sum(10 - i)
		let rem = p / s
		
		count += rem
		p = p % s
	}
	
	print(count)
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

// 実行時間 24ms
// 回答時間 5m44s
