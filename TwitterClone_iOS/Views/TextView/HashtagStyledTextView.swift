//
//  HashtagStyledTextView.swift
//  TwitterClone_iOS
//
//  Created by Junaed Muhammad Chowdhury on 14/5/23.
//

import SwiftUI

struct HashtagStyledTextView: View {
    let text: String
    

    var body: some View {
        hashtagStyledText(from: text)
    }

    private func hashtagStyledText(from string: String) -> Text {
        let hashtagRegex = try? NSRegularExpression(pattern: "(?:^|\\s)(#\\w+)(?=[!.,?]|\\s|$)", options: .caseInsensitive)

        var text = Text("")

        let range = NSRange(string.startIndex..<string.endIndex, in: string)
        let matches = hashtagRegex?.matches(in: string, options: [], range: range) ?? []

        var currentIndex = string.startIndex

        for match in matches {
            if let swiftRange = Range(match.range, in: string) {
                let beforeHashtagText = Text(string[currentIndex..<swiftRange.lowerBound])
                let hashtagText = Text(string[swiftRange])
                    .foregroundColor(.blue)

                text = text + beforeHashtagText + hashtagText

                currentIndex = swiftRange.upperBound
            }
        }

        if currentIndex < string.endIndex {
            let remainingText = Text(string[currentIndex..<string.endIndex])
            text = text + remainingText
        }

        return text
    }
}

struct HashtagStyledTextView_Previews: PreviewProvider {
    static var previews: some View {
        HashtagStyledTextView(text: "I'm so excited to be learning #SwiftUI! It's such a powerful tool for creating beautiful and interactive user interfaces. #iOSDev #DeveloperLife")
    }
}
