//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let S = readJoinedLine()
	
	guard S.filter({ $0 == "o" }).count <= 4 else {
		print(0)
		return
	}
	
	let nes: Set<Int> = Set<Int>(S.indices.filter({ S[$0] == "o"}))
	let non: Set<Int> = Set<Int>(S.indices.filter({ S[$0] == "x"}))
	var result: Int = 0
	
	// O(e4)
	main: for pass in 0..<10000 {
		let nums: [Int] = "000\(pass)".suffix(4).map { Int(String($0))! }
		
		for n in nes {
			if !nums.contains(n) { continue main }
		}
		
		for n in non {
			if nums.contains(n) { continue main }
		}
		
		result += 1
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
