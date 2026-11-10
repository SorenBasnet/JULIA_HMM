

"""
Implement viterbi algorithm here
"""

# initial prob
initial_prob = [0.60, 0.4]

transition_prob_matrix = [
                          [0.70, 0.30],
                          [0.40, 0.60]
                         ]

emission_prob_matrix = [
                        [0.1, 0.4, 0.5],
                        [0.8, 0.1, 0.1]
                       ]
# say the number of observation is as follows :

O = ['R', 'G', 'B']

# hidden states

hidden_states = ['S', 'H']

# arg max for each step
max_step = []
# arg max observation
max_step_observation = []


prob = []

i = 1
# initialization
for step in hidden_states
    p = initial_prob[i] * transition_prob_matrix[i][i]
    push!(prob, p)
    global i = i + 1

    #for state in hidden_states
    #    p = initial_prob[i]
    #end

end


println(prob)

#for step in O



