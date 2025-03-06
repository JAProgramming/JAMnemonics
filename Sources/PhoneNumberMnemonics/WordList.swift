struct Fruit {
    let word: [String]  // Store words from file

    init() {
        do {
            let everything = try String(contentsOfFile: "words.txt") // Read file content
            word = everything.components(separatedBy: "\r\n") // Split into an array
        } catch {
            word = [] // If reading fails, initialize an empty array
            print("Error reading file: \(error)")
        }
    }
}
