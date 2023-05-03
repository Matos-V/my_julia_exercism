"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    return !isempty(input) && issubset('a':'z', lowercase(input)) 
end