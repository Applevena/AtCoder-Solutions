//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func mul10(_ count: Int) -> Int {
	guard count > 0 else { return 1 }
	
	return 10 * mul10(count - 1)
}

func solution() {
	let N = readInt()
	
	let max1 = mul10(6) - mul10(3)
	let max2 = (mul10(9) - mul10(6)) * 2
	let max3 = (mul10(12) - mul10(9)) * 3
	let max4 = (mul10(15) - mul10(12)) * 4
	
	switch N {
		case 1..<mul10(3): print(0)
		case mul10(3)..<mul10(6): print((N - mul10(3) + 1))
		case mul10(6)..<mul10(9): print((N - mul10(6) + 1) * 2 + max1)
		case mul10(9)..<mul10(12): print((N - mul10(9) + 1) * 3 + max2 + max1)
		case mul10(12)..<mul10(15): print((N - mul10(12) + 1) * 4 + max3 + max2 + max1)
		case mul10(15): print(5 + max4 + max3 + max2 + max1)
		default:
			fatalError()
	}
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
