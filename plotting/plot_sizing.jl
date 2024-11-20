#=
Sizing for LaTeX:

I'm not quite sure the assumptions that go into this, but something about converting points, pixels, dpi, inches, etc. leads to needed to take the desired size of the figure in inches and multiplying by 96 to get it sized correctly in LaTeX

This is a set of convenience functions that allows you to set figure sizes for LaTeX manually or with several defaults I have chosen.
=#

function latexsize(x, y)
    return (x * 96, y * 96)
end

"""
sets figure width to be 90% of the full text width divided by the number of sub figures (horizontally) and sets the height based on the input aspect ratio.
"""
function subfig_size(; n_cols=2, aspect_ratio=4 / 3, textwidth=7)
    width = textwidth / n_cols * 0.9
    return latexsize(width, width / aspect_ratio)
end

"""
sets the figure width to be about the text width for a 2 column article
"""
function two_column_size(; aspect_ratio=4 / 3)
    return latexsize(3.5, 3.5 / aspect_ratio)
end

"""
my default for single figures in a single column article
"""
function one_column_default(; aspect_ratio=4 / 3)
    return latexsize(5, 5 / aspect_ratio)
end

"""
about full text width for a single column article
"""
function one_column_full_width(; aspect_ratio=4 / 3)
    return latexsize(7, 7 / aspect_ratio)
end

#TODO; for presentation animations, need to adjust more than figure size, probably need to write a defaults function that changes font sizes and line thickness as well
function presentation_full_width(; aspect_ratio=16 / 9)
    return latexsize(16, 16 / aspect_ratio)
end

function presentation_half_width(; aspect_ratio=8 / 9)
    return latexsize(8, 8 / aspect_ratio)
end
