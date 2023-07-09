// https://atcoder.jp/contests/abs/tasks/abc086_a

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    return (value[0], value[1])
}

let (a, b) = readInt2()

private func process() -> Bool {
    return (a * b).isMultiple(of: 2)
}

print(process() ? "Even":"Odd")
