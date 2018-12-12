module Bob exposing (hey)

hey : String -> String
hey s =
    if yelledQuestion s then "Calm down, I know what I'm doing!"
    else if question s then "Sure."
    else if noSentence s then "Fine. Be that way!"
    else if yell s then "Whoa, chill out!"
    else "Whatever."

question : String -> Bool
question =
  String.endsWith "?"

yell : String -> Bool
yell s =
    (String.any Char.isUpper) s && (not << String.any Char.isLower) s

yelledQuestion : String -> Bool
yelledQuestion s =
    question s && yell s

noSentence : String -> Bool
noSentence =
    List.isEmpty << List.filter (String.any Char.isAlphaNum) << String.words
