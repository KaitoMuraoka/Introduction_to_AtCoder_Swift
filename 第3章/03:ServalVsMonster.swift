private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    return (value[0], value[1])
}

var (H, A) = readInt2()

func process() -> Int {
    var count = 1
    while H > A {
        count += 1
        H -= A
    }

    return count
}

print(process())
