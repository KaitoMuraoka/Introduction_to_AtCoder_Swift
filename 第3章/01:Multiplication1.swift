// https://atcoder.jp/contests/abc169/submissions/40120910

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    return (value[0], value[1])
}

let (A, B) = readInt2()

print(A * B)
