// https://atcoder.jp/contests/abc083/tasks/abc083_b

private func readInt3() -> (Int, Int, Int) {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    return (value[0], value[1], value[2])
}

// 整数Nの各桁の和を計算する
private func validation(maxNumber: Int) -> Int {
    var item = maxNumber
    var sumDigit = 0 // 各行の和
    while item > 0 {
        sumDigit += item % 10
        item /= 10
    }
    return sumDigit
}


func process() -> Int {
    var (N, A, B) = readInt3()
    var sumResult = 0
    for i in 1...N {
        let result = validation(maxNumber: i)
        if A <= result && result <= B {
            sumResult += i
        }
    }
    return sumResult
}

print(process())
