//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let S = readLine()!
	
	var result: Bool = true
	var odd: Bool = true
	
	// O(n)
	for chr in S {
		if odd {
			guard let _ = String(chr).range(of: "[a-z]", options: .regularExpression) else {
				result = false
				break
			}
		} else {
			guard let _ = String(chr).range(of: "[A-Z]", options: .regularExpression) else {
				result = false
				break
			}
		}
		
		odd = !odd
	}
	
	print(result ? "Yes" : "No")
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
