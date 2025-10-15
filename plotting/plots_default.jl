using Plots
pgfplotsx() # use PGFPlotsX backend for LaTeX plots
using LaTeXStrings # for math in axis labels and annotations
using Measures # convenient for setting margins in mm

default(;
    # - Fonts - #
    fontfamily="cmunrm", # computer modern roman
    annotationfontfamily="cmunrm",  # computer modern roman
    guidefontfamily="cmunrm",
    # - Turn off Backgrounds - #
    background_color=nothing, # transparent outside of axes
    background_color_inside=nothing, # transparent inside of axes
    background_color_legend=nothing, # trasparent background of legend
    # - Lines - #
    foreground_color_legend=nothing, # turn off legend border
    grid=false, # turn off grid
    # - Colors - #
    color_palette=[
        RGB(0, 92 / 255, 171 / 255), # royal blue #005cab
        RGB(190 / 255, 76 / 255, 77 / 255), # red #be4c4d
        RGB(105 / 255, 174 / 255, 95 / 255), # green #69ae5f
        RGB(167 / 255, 84 / 255, 164 / 255), # purple #a754a4
        RGB(190 / 255, 147 / 255, 61 / 255), # yellow #be933d
        RGB(128 / 255, 128 / 255, 128 / 255), # middle gray #808080
    ],
    # - Labels - #
    guidefontsize=11, # axis label font size
    tickfontsize=8, # tick font size
    yguidefontrotation=-90, # rotates y-axis label
)

# color palatte for easy access
primary = RGB(0, 92 / 255, 171 / 255) #blue #005cab
secondary = RGB(190 / 255, 76 / 255, 77 / 255) #red #be4b4d
tertiary = RGB(105 / 255, 174 / 255, 95 / 255) #green #6aae5f
quaternary = RGB(167 / 255, 84 / 255, 164 / 255) #purple #a754a4
quinary = RGB(190 / 255, 147 / 255, 61 / 255) #yellow #be933d
plotsgray = RGB(128 / 255, 128 / 255, 128 / 255) #gray #808080

# Useful extra_kwarg to actually make an aspect_ratio=:equal PGFPlotsX plot
aspect_ratio_1_tight = Dict(:subplot => Dict("axis equal image" => nothing))

# cutom color map functions that let you place the center color at zero, etc.
function diverging_cgrad(
    low_cutoff,
    high_cutoff;
    low_color=primary,
    high_color=secondary,
    low_flag_color=quaternary,
    high_flag_color=tertiary,
    zero_alpha=0.0,
    df = sqrt(eps())
)
    return cgrad(
        # The colors for the gradient
        [
            low_flag_color,
            low_color,
            RGBA(1.0, 1.0, 1.0, zero_alpha),
            high_color,
            high_flag_color,
        ],
        # The values where each color is placed (linearly interpolated from 0 to 1 as required)
        (
            [low_cutoff - df, low_cutoff, 0.0, high_cutoff, high_cutoff + df] .-
            (low_cutoff - df)
        ) / (high_cutoff + df - (low_cutoff - df)),
    )
end

function sequential_cgrad(
    low_cutoff,
    high_cutoff;
    high_color=primary,
    low_flag_color=quaternary,
    high_flag_color=secondary,
    low_alpha=0.0,
    df=sqrt(eps())
)
    return cgrad(
        # The colors for the gradient
        [
            low_flag_color,
            RGBA(1.0, 1.0, 1.0, low_alpha),
            high_color,
            high_flag_color,
        ],
        # The values where each color is placed (linearly interpolated from 0 to 1 as required)
        (
            [low_cutoff - df, low_cutoff, high_cutoff, high_cutoff + df] .-
            (low_cutoff - df)
        ) / (high_cutoff + df - (low_cutoff - df)),
    )
end
