//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N = readInt()
	
	var ns: Set<String> = []
	var os: Set<String> = []
	var result = "satisfiable"
	
	// O(N)
	for _ in 0..<N {
		let input = readLine()!
		let first = input.first!
		
		if first == "!" {
			os.insert(input)
			
			let target = String(input.suffix(input.count - 1))
			
			if ns.contains(target) {
				result = target
				break
			}
		} else {
			ns.insert(input)
			
			let target = "!\(input)"
			
			if os.contains(target) {
				result = input
				break
			}
		}
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
