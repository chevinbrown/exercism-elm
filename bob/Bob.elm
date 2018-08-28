module Bob exposing (hey)


hey : String -> String
hey remark =
    if forcefulQuestion remark then
        "Calm down, I know what I'm doing!"

    else if shouting remark then
        "Whoa, chill out!"

    else if String.right 1 remark == "?" then
        "Sure."

    else if String.trim remark == "" then
        "Fine. Be that way!"

    else
        "Whatever."


shouting : String -> Bool
shouting remark =
    remark /= String.toLower remark && remark == String.toUpper remark


forcefulQuestion : String -> Bool
forcefulQuestion remark =
    remark /= String.toLower remark && remark == String.toUpper remark && String.contains "?" remark
