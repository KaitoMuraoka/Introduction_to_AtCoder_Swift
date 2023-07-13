//https://atcoder.jp/contests/abc104/tasks/abc104_b

private func readStringArray() -> [String.Element] {
    Array(readLine()!)
}

let S = readStringArray()

func process() -> Bool {
    // Sの先頭の文字は大文字のA
    guard S.first == "A" else {return false}
    // Sの先頭から3文字目と末尾から2文字目の間に大文字のCが1個だけある
    guard S[2..<S.count-1].filter({$0 == "C"}).count == 1 else {return false}
    //　以上のACを除くSの文字は全て小文字である
    guard S.filter({$0.isUppercase}).count == 2 else {return false}
    // 条件が全て満たせばAC
    return true
}

print(process() ? "AC":"WA")
