//https://atcoder.jp/contests/abc081/tasks/abc081_b

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readIntArray() -> [Int] {
    readLine()!.split(separator: " ").map{Int(String($0))!}
}


func main() -> Int {
    let N = readInt()
    var Aarray = readIntArray()
    var count = 0 // 操作回数

    while Aarray.allSatisfy({$0 % 2 == 0}) {
        // 操作を行えるならば、操作を行う
        Aarray = Aarray.map{$0 / 2}
        // 操作回数を1増やす
        count += 1
    }
    return count
}


print(main())
