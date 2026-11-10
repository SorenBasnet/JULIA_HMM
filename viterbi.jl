

"""
Implement viterbi algorithm here
"""

function viterbi(states, initial_matrix, transition_matrix, emission_matrix, observations)

    rows = length(observations)
    cols = length(states)

    #prob = zeros(rows, cols)

    prob = Dict{String, Float64}()
    sizehint!(prob, rows)
    #for state in states
    #    prob[state] = zeros(rows)
    #end

    #prev = Matrix{Float64}(undef, rows, cols)
    winner_prob = -1
    best_prob = ""

    println(winner_prob[1])

    for state in states
        prob[state] = _initialization(initial_matrix[state], emission_matrix[state][observations[1]])

        if winner_prob == -1
            best_prob = state
            winner_prob = prob[state]
        elseif winner_prob < prob[state]
            winner_prob = prob[state]
            best_prob = state
        end
    end

    #println(winner_prob)
    #println(best_prob)






end



function _initialization(initial_matrix_state, emission_matrix_state_observation)
    return initial_matrix_state * emission_matrix_state_observation
end


initial_prob = Dict(
                    "Sad" => 0.6,
                    "Happy" => 0.4,
                   )


transition_prob_matrix = Dict(
                              "Sad" => Dict(
                                            "Sad" => 0.7,
                                            "Happy" => 0.3
                                           ),
                              "Fever" => Dict(
                                              "Sad" => 0.4,
                                              "Happy" => 0.6
                                             ),
                             )

emission_prob_matrix = Dict("Sad" => Dict("Red" => 0.1, "Green" => 0.4, "Blue" => 0.5),
                            "Happy" => Dict("Red" => 0.8, "Green" => 0.1, "Blue" => 0.1 ))

O = ["Red", "Green", "Blue"]
hidden_states = ["Sad", "Happy"]


viterbi(hidden_states, initial_prob, transition_prob_matrix, emission_prob_matrix, O)





