private func readInt() -> Int {
    Int(readLine()!)!
}

let A = readInt()
let B = readInt()
let C = readInt()
let X = readInt()

func process() -> Int {

    var result = 0
    for a in 0...A {
        for b in 0...B {
            for c in 0...C {
                // 合計金額がX円に一致したらresultを1増やす
                if (500 * a + 100 * b + 50 * c) == X {
                    result += 1
                }
            }
        }
    }
    return result
}
print(process())
