function combinations_in_cage(block_sum, block_size, restriction_list = [])
    all_combinations = combine(9,block_size)
    filter!(p->block_sum == sum(values(p)), all_combinations)
    for restriction in restriction_list
        filter!(p->restriction ∉ values(p), all_combinations)
    end
    all_combinations = all_combinations[end:-1:1]
    return all_combinations
end

function combine(n, k)
    result = [[]]
    i = 1
    p = zeros(k)
    while (i >= 1) 
        p[i] = p[i] + 1
        if (p[i] > n) 
            i = i - 1 # rewind  to previous number
        elseif (i == k) 
            pushfirst!(result, p)
        else
            i = i + 1 # next number is no less
            p[i] = p[i - 1]
        end
    end
    pop!(result)
    return result
end