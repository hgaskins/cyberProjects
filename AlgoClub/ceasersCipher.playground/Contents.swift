import UIKit

/*
    The Ceasar's Cipher is a simple and well known encyption technique. It is named after Julius Ceaser bc it was used by the Roman Empire to encode military secrets. To use a cipher and make an encrypted message, take every letter in a message and shift it to the value of a 'key' to the right.
    
    For example:
        - if our key is 3
            - the letter a becomes d
            - the letter b becomes e
            - the letter c becomes f
            - the word 'hello' becomes 'khoor'
    
    Task: Write a Ceasar Cipher program that encrypts a message by shifting each letter 3 places to the right.
 */

func ceasarCipherEncyptor(string: String, key: Int) -> String {
    let alphabet : [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    // establish string is not empty by lowercasing
    let secretMessage = string.lowercased()
    // convert string to array
    var message = Array(secretMessage)
    
    // loop through the given string, for each letter in the string array find it's corresponding letter in our created alphabet array, and add the key to the value
    for i in 0..<message.count {
        for j in 0..<alphabet.count {
            if message[i] == alphabet[j] {
                message[i] = alphabet[(j+key) % 26]
                break
            }
        }
    }
    
    let newMessage = String(message)
    return newMessage
}

print(ceasarCipherEncyptor(string: "This is a message", key: 1))


