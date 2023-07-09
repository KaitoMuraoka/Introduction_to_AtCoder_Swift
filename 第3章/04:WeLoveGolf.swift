private func readInt() -> Int {
    Int(readLine()!)!
}

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    return (value[0], value[1])
}

let K = readInt()
let (A, B) = readInt2()

private func process() -> Bool {
    var flag: Bool = false
    for i in A...B {
        if i % K == 0 {
            flag = true
        }
    }

    return flag
}

print(process() ? "OK":"NG")
