module Bob exposing (hey)

hey : String -> String
hey s =
    if yelledquestion s then "Calm down, I know what I'm doing!"
    else if question s then "Sure."
    else if nosentence s then "Fine. Be that way!"
    else if yell s then "Whoa, chill out!"
    else "Whatever."

question : String -> Bool
question s =
    (not << List.isEmpty << String.words) s && (String.right 1 s == "?")

yell : String -> Bool
yell s =
    (String.any Char.isUpper) s && (not << String.any Char.isLower) s

yelledquestion : String -> Bool
yelledquestion s =
    (question s) && (yell s)

nosentence : String -> Bool
nosentence =
    List.isEmpty << List.filter (String.any Char.isAlphaNum) << String.words
