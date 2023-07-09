// https://atcoder.jp/contests/abc088/tasks/abc088_b
private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map{Int(String($0))!}
}

let N = readInt()
var CardArray = readIntArray()

func process() -> Int {
    CardArray.sort(by: >)
    var result = 0
    for i in 0..<CardArray.count {
        if i.isMultiple(of: 2) {
            result += CardArray[i]
        } else {
            result -= CardArray[i]
        }
    }
    return result
}

print(process())
