// WordList.swift
// Created for Assignment 5 of CSI 380

import Foundation

// YOU FILL IN HERE
struct Fruit {
    let word: [String]
    
    init() {
        let fileManager = FileManager.default
        let currentPath = fileManager.currentDirectoryPath
        let filePath = "\(currentPath)/words.txt"
        do {
            let readFile = try String(contentsOfFile: filePath)
            word = readFile.components(separatedBy: "\n")
        } catch let error {
            Swift.print("Fatal Error: \(error.localizedDescription)")
            word = []
        } 
    }
}

// You'll want to create a mechanism here for loading and querying
// words.txt. It's up to you how you do this. You may consider a struct.
