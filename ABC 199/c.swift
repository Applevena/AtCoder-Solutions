//
//  Using Swift 5.0
//

import Foundation

// MARK: Main Solution
//
func solution() {
	let N: Int = readInt()
	var S: [String] = readJoinedLine()
	let Q: Int = readInt()
	
	var rev: Bool = false
	
	for _ in 0..<Q {
		let (T, A, B) = «readInts()
		
		switch (rev, T) {
			case (true, 1):
				let modifA = A > N ? A - N - 1 : A + N - 1
				let modifB = B > N ? B - N - 1 : B + N - 1
				
				S.swapAt(modifA, modifB)
				
			case (false, 1):
				S.swapAt(A - 1, B - 1)
				
			case (_, 2):
				rev = !rev
				
			default:
				fatalError()
		}
	}
	
	if rev {
		for index in 0..<N {
			S.swapAt(index, index + N)
		}
	}
	
	print(S.joined())
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
