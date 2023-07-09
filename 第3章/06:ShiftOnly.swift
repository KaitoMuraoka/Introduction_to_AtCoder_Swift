//https://atcoder.jp/contests/abc081/tasks/abc081_b

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map{Int(String($0))!}
}

func process() -> Int {
    let _ = readInt()
    var positiveInteger = readIntArray()
    var operationCount = 0

    while positiveInteger.allSatisfy({$0 % 2 == 0}) {
        positiveInteger = positiveInteger.map{$0 / 2}
        operationCount += 1
    }
    return operationCount
}

print(process())
