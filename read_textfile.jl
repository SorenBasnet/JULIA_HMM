
"""
Comment goes here :

"""

function read_file(filename)

    # each line from the filename
    lines = readlines(filename)


    # remove any line starting with '#'
    lines = filter(line -> !isempty(strip(line)) && ! startswith(strip(line), '#'), lines)

    # convert each line into numerical value
    data = [parse.(Float64, split(line)) for line in lines]

    nrow_matrix = length(data[1])
    initial_parameters = data[1]
    transition_prob_matrix = data[2:nrow_matrix+1]
    emission_prob_matrix = data[nrow_matrix+2:end]

    return initial_parameters, transition_prob_matrix, emission_prob_matrix

end







