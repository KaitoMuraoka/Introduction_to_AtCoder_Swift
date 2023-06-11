//https://atcoder.jp/contests/abc104/tasks/abc104_b


func process() -> Bool {
    let Sarray = Array(readLine()!)
    // Sの先頭が"A"でない場合はFalse
    if Sarray[0] != "A" {return false}

    // Sの先頭2文字と末尾1文字を除いた"C"の個数を調べる
    if Sarray[2..<Sarray.count-1].filter({$0 == "C"}).count != 1 { return false }

    // Sに含まれる大文字の個数を数える
    if Sarray.filter({$0.isUppercase}).count != 2 {
        return false
    }
    // 条件がすべて満たせばtrue
    return true
}

print(process() ? "AC":"WA")
