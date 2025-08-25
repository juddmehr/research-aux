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

