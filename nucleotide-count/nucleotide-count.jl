"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    DNA = Dict(
        'A' => 0,
        'C' => 0,
        'G' => 0,
        'T' => 0,
    )
    if length(strand) == 0
        return DNA
    else
        for letter in strand
            try 
                @assert letter in keys(DNA)
                DNA[letter] += 1
            catch
                throw(DomainError(letter,"Invalid sequence!"))
            end
        end
    end
    return DNA
end
