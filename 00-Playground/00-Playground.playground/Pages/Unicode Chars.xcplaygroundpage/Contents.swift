
// Explore Unicode characters

import Foundation

//"Vehicles", emojis: "🚙🚗🚘🚕🚖🏎🚚🛻🚛🚐🚓🚔🚑🚒🚀✈️🛫🛬🛩🚁🛸🚲🏍🛶⛵️🚤🛥🛳⛴🚢🚂🚝🚅🚆🚊🚉🚇🛺🚜")
//"Sports", emojis: "🏈⚾️🏀⚽️🎾🏐🥏🏓⛳️🥅🥌🏂⛷🎳")
//"Music", emojis: "🎼🎤🎹🪘🥁🎺🪗🪕🎻")
//"Animals", emojis: "🐥🐣🐂🐄🐎🐖🐏🐑🦙🐐🐓🐁🐀🐒🦆🦅🦉🦇🐢🐍🦎🦖🦕🐅🐆🦓🦍🦧🦣🐘🦛🦏🐪🐫🦒🦘🦬🐃🦙🐐🦌🐕🐩🦮🐈🦤🦢🦩🕊🦝🦨🦡🦫🦦🦥🐿🦔")
//"Animal Faces", emojis: "🐵🙈🙊🙉🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🐨🐯🦁🐮🐷🐸🐲")
//"Flora", emojis: "🌲🌴🌿☘️🍀🍁🍄🌾💐🌷🌹🥀🌺🌸🌼🌻")
//"Weather", emojis: "☀️🌤⛅️🌥☁️🌦🌧⛈🌩🌨❄️💨☔️💧💦🌊☂️🌫🌪")
//"COVID", emojis: "💉🦠😷🤧🤒")
//"Faces", emojis: "😀😃😄😁😆😅😂🤣🥲☺️😊😇🙂🙃😉😌😍🥰😘😗😙😚😋😛😝😜🤪🤨🧐🤓😎🥸🤩🥳😏😞😔😟😕🙁☹️😣😖😫😩🥺😢😭😤😠😡🤯😳🥶😥😓🤗🤔🤭🤫🤥😬🙄😯😧🥱😴🤮😷🤧🤒🤠")

let ch1 = "🐥"
print(Array(ch1.unicodeScalars))

let ch2 = "🦔"
print(Array(ch2.unicodeScalars))

// https://developer.apple.com/documentation/swift/string
// https://en.wikipedia.org/wiki/Emoji#Unicode_blocks
// https://cs193p.sites.stanford.edu/
// https://web.stanford.edu/class/cs193p/Spring2021/EmojiArtL12.zip

let str = "🐥🐣🐂🐄🐎🐖🐏🐑"
//  for uni in str {
//    print(uni)
//  }
print("str", str)
print(str.count)
print(str[str.startIndex])
print(str[str.index(str.startIndex, offsetBy: 3)])

let nstr:NSString = "🐥🐣🐂🐄🐎🐖🐏🐑"
print("nstr:NSString", nstr)
print(nstr.length)
print(nstr.substring(with: NSMakeRange(0,2)))
