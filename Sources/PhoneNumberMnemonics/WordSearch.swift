// WordSearch.swift
// Created for Assignment 5 of CSI 380

import Foundation

// YOU FILL IN HERE
// Feel free to put in additional utility code as long as you have
// no loops, no *mutable* global variables, and no custom classes.
let dialNumbers: [Character: [String]] =  ["2": ["A", "B", "C"], "3": ["D", "E", "F"], "4": ["G", "H", "I"], "5": ["J", "K", "L"],
    "6": ["M", "N", "O"], "7": ["P", "Q", "R", "S"], "8": ["T", "U", "V"], "9": ["W", "X", "Y", "Z"]
]

// Replaces each character in a phone number with an array of the
// possible letters that could be in place of that character
// For instance, 234 becomes [["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]]
public func letters(for phoneNumber: String) -> [[String]] {
    // YOU FILL IN HERE
    let values = phoneNumber.compactMap{dialNumbers[$0]}
    return values
}

// Finds all of the ordered permutations of a given
// array of arrays of strings
// combining each choice in one
// array with each choice in the next array, and so on to produce strings
// For instance permuations(of: [["a", "b"], ["c"], ["d", "e"]]) will return
// ["acd", "ace" "bcd", "bce"]
public func permutations(of arrays: [[String]]) -> [String] {
    // YOU FILL IN HERE
    // had some help with chat gpt on the structure of higher order functions
    return arrays.reduce([""]) 
    {result, nextStep in result.flatMap 
     { last in nextStep.map {last + $0}}}

}

// Finds all of the possible strings of characters that a phone number
// can potentially represent
// Uses letters(for:) and permutations(of:) to do this
public func possibles(for phoneNumber: String) -> [String] {
    // YOU FILL IN HERE
    let allLetters = letters(for: phoneNumber)
    let sequences = permutations(of: allLetters)
    return sequences
}

// Returns all of the words in a given *string* from the wordlist.txt file
// using only words in the word list of minimum length ofMinLength
public func wordsInString(_ string: String, ofMinLength length: UInt) -> [String] {
    // YOU FILL IN HERE
    let wordList = Fruit()
    let newPossibles = possibles(for: string)
    let smallerList = wordList.filter {$0.count > 5)
    
    return smallerList
}

// Returns all possibles strings of characters that a phone number
// can potentially represent that contain words in words.txt
// greater than or equal to ofMinLength characters
public func possiblesWithWholeWords(ofMinLength length: UInt, for phoneNumber: String) -> [String] {
    // YOU FILL IN HERE
    return [""]
}

// Returns the phone number mnemonics that have the most words present in words.txt
// within them (note that these words could be overlapping)
// For instance, if there are two mnemonics that contain three words from
// words.txt, it will return both of them, if the are no other mnemonics
// that contain more than three words
public func mostWords(for phoneNumber: String) -> [String] {
    // YOU FILL IN HERE
    return [""]
}

// Returns the phone number mnemonics with the longest words from words.txt
// If more than one word is tied for the longest, returns all of them
public func longestWords(for phoneNumber: String) -> [String] {
    // YOU FILL IN HERE
    return [""]
}
