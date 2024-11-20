using Plots
pgfplotsx() # use PGFPlotsX backend for LaTeX plots
using LaTeXStrings
using Measures

default(;
    # - Fonts - #
    fontfamily="cmunrm", # computer modern roman
    annotationfontfamily="cmunrm",  # computer modern roman
    # - Turn off Backgrounds - #
    background_color=nothing,
    background_color_inside=nothing,
    background_color_legend=nothing,
    # - Lines - #
    foreground_color_legend=nothing, # turn off legend border
    grid=false, # turn off grid
    # - Colors - #
    color_palette=[
        RGB(0, 92 / 255, 171 / 255), # blue
        RGB(190 / 255, 76 / 255, 77 / 255), # red
        RGB(105 / 255, 174 / 255, 95 / 255), # green
        RGB(167 / 255, 84 / 255, 164 / 255), # purple
        RGB(190 / 255, 147 / 255, 61 / 255), # yellow
        RGB(128 / 255, 128 / 255, 128 / 255), #gray
    ],
    # - Misc - #
    yguidefontrotation=-90, # rotates y-axis label
)

