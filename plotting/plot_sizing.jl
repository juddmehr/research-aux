function latexsize(x, y)
    return (x * 96, y * 96)
end

function subfig_size(n_cols=2; aspect_ratio=4 / 3, text_width=7.0)
    width = text_width / n_cols
    return latexsize(width, width / aspect_ratio)
end


function two_column_size(; aspect_ratio=4 / 3)
    return latexsize(3.5, 3.5 / aspect_ratio)
end

function one_column_default(; aspect_ratio=4 / 3)
    return latexsize(5, 5 / aspect_ratio)
end

function one_column_full_width(; aspect_ratio=4 / 3)
    return latexsize(7, 7 / aspect_ratio)
end

#TODO; for presentations, need to adjust font size
#TODO: really, for presentations need to have a whole different default function probably.
function presentation_full_width(; aspect_ratio=16 / 9)
    return latexsize(16, 16 / aspect_ratio)
end

function presentation_half_width(; aspect_ratio=8 / 9)
    return latexsize(8, 8 / aspect_ratio)
end

aspect_ratio_1_tight = Dict(:subplot => Dict("axis equal image" => nothing))
