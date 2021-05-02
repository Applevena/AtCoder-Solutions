//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: [String] = readJoinedLine()
	
	var padding: Int = 0
	
	for n in N.reversed() {
		guard n == "0" else { break }
		
		padding += 1
	}
	
	var modifN = [String](repeating: "0", count: padding)
	modifN.append(contentsOf: N)
	
	var result: Bool = true
	
	for index in modifN.indices {
		guard modifN[index] == modifN[modifN.count - index - 1] else {
			result = false
			break
		}
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


// MARK: Convert Array to Tuple
//
prefix operator «
prefix func « <T> (a: [T]) -> (T, T) { (a[0], a[1]) }
prefix func « <T> (a: [T]) -> (T, T, T) { (a[0], a[1], a[2]) }
prefix func « <T> (a: [T]) -> (T, T, T, T) { (a[0], a[1], a[2], a[3]) }
prefix func « <T> (a: [T]) -> (T, T, T, T, T) { (a[0], a[1], a[2], a[3], a[4]) }
