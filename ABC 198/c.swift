//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let (R, X, Y) = «readInts()
	
	let X2: Int = X * X
	let Y2: Int = Y * Y
	let R2: Int = R * R
	
	if R2 == X2 + Y2 {
		print(1)
		return
	}
	
	if R2 > X2 + Y2 {
		print(2)
		return
	}
	
	if R2 < X2 + Y2 {
		let count = sqrt(Double(X2 + Y2) / Double(R2))
		
		print(Int(ceil(count)))
	}
	
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
