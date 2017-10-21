

import Foundation

extension Locale {
    
    /// Returns a list of common `Locale` ISO language codes.
    static var commonISOLanguageCodes: [String] {
        return ["en", "fr", "de", "ja", "nl", "it", "es", "da", "fi", "no", "sv", "ko", "zh", "ru", "pl", "pt", "pt-BR", "id", "tr", "hu", "el", "ca", "hi", "th", "ms", "cs", "sk", "vi", "ro", "uk", "ar"]
    }
    
    /// Returns a list of common `Locale` languages.
    static var commonLanguages: [String]  {
        return Locale.commonISOLanguageCodes.flatMap {
            guard let language = Locale.current.localizedString(forIdentifier: $0) else { return nil }
            return language.localizedCapitalized
        }
    }
}
