//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N = readInt()
	
	var divs: [(l: Double, r: Double)] = []
	
	for _ in 0..<N {
		let (t, l, r) = «readInts()
		
		switch t {
			case 1: divs.append((l: Double(l), r: Double(r)))
			case 2: divs.append((l: Double(l), r: Double(r) - 0.1))
			case 3: divs.append((l: Double(l) + 0.1, r: Double(r)))
			case 4: divs.append((l: Double(l) + 0.1, r: Double(r) - 0.1))
			default:
				return
		}
	}
	
	var count = 0
	
	for i in 0..<(N - 1) {
		for j in (i + 1)..<N {
			let a = divs[i]
			let b = divs[j]
			
			if a.l > b.r || a.r < b.l { continue }
			
			count += 1
		}
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

// 回答時間 13:43
// 実行時間 89ms
