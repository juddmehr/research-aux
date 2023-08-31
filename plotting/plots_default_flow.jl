#=
Default Plots Settings for creating tikz native figures for dissertation
=#

using Plots;
# pgfplotsx();
pyplot()
using LaTeXStrings
using Measures

default()
default(;
    #     #:Plot
    # background_color=RGBA(1, 1, 1, 0),
    # background_color = nothing,
    # background_color_outside = nothing,
    #     display_type,
    dpi=100, #default is 100, 300 is "high resolution"
    #     extra_kwargs,
    #     extra_plot_kwargs,
    fontfamily="Computer Modern",
    #     foreground_color,
    #     html_output_format,
    #     inset_subplots,
    #     layout,
    #     link,
    #     overwrite_figure,
    #     plot_title,
    #     plot_title_location,
    #     plot_titlefontcolor,
    #     plot_titlefontfamily,
    #     plot_titlefonthalign,
    #     plot_titlefontrotation,
    #     plot_titlefontsize,
    #     plot_titlefontvalign,
    #     pos,
    #     show,
    size=(400, 300), #with dpi = 100 default 100 units = 1 inch?
    #     tex_output_standalone,
    #     thickness_scaling,
    #     warn_on_unsupported,
    #     window_title,

    #######################
    #      :Series
    #######################
    #     arrow,
    #     bar_edges,
    #     bar_position,
    #     bar_width,
    #     bins,
    #     colorbar_entry,
    #     connections,
    #     contour_labels,
    #     contours,
    #     extra_kwargs,
    #     fill_z,
    # fillalpha=0.125,
    # fillcolor=RGB(128 / 255, 128 / 255, 128 / 255),
    #     fillrange,
    #     group,
    #     hover,
    #     label,
    #     levels,
    #     line_z,
    #     linealpha,
    #     linecolor,
    #     linestyle,
    linewidth=1.0,
    #     marker_z,
    #     markeralpha,
    #     markercolor,
    #     markershape,
    #     markersize,
    # markerstrokealpha=0,
    #     markerstrokecolor,
    #     markerstrokestyle,
    #     markerstrokewidth,
    #     normalize,
    #     orientation,
    #     primary,
    #     quiver,
    #     ribbon,
    #     series_annotations,
    #     seriesalpha,
    #     seriescolor,
    #     seriestype,
    #     show_empty_bins,
    #     smooth,
    #     stride,
    #     subplot,
    #     weights,
    #     x,
    #     xerror,
    #     y,
    #     yerror,
    #     z,
    #     zerror

    #######################
    #      :Subplot
    #######################
    #     annotationcolor,
    annotationfontfamily="Computer Modern",
    annotationfontsize=10,
    #     annotationhalign,
    #     annotationrotation,
    #     annotations,
    #     annotationvalign,
    #     aspect_ratio,
    background_color_inside=nothing,
    background_color_legend=nothing,
    background_color_subplot=nothing,
    #     bottom_margin,
    #     camera,
    #     clims,
    color_palette=[
        RGB(78 / 255, 121 / 255, 167 / 255) #blue 1
        RGB(225 / 255, 87 / 255, 89 / 255) # red 1
        RGB(57 / 255, 57 / 255, 57 / 255) #grey 1
        RGB(89 / 255, 161 / 255, 79 / 255) #green 1
        RGB(160 / 255, 203 / 255, 232 / 255) #blue 2
        RGB(255 / 255, 157 / 255, 154 / 255) # red 2
        RGB(140 / 255, 209 / 255, 125 / 255) # green 2
        RGB(123 / 255, 123 / 255, 123 / 255) #grey 2
    ],
    #     colorbar,
    #     colorbar_continuous_values,
    #     colorbar_discrete_values,
    #     colorbar_fontfamily,
    #     colorbar_formatter,
    #     colorbar_scale,
    #     colorbar_tickfontcolor,
    #     colorbar_tickfontfamily,
    #     colorbar_tickfonthalign,
    #     colorbar_tickfontrotation,
    #     colorbar_tickfontsize,
    #     colorbar_tickfontvalign,
    #     colorbar_ticks,
    #     colorbar_title,
    #     colorbar_title_location,
    #     colorbar_titlefontcolor,
    #     colorbar_titlefontfamily,
    #     colorbar_titlefonthalign,
    #     colorbar_titlefontrotation,
    #     colorbar_titlefontsize,
    #     colorbar_titlefontvalign,
    #     extra_kwargs,
    #     fontfamily_subplot,
    foreground_color_legend=nothing,
    #     foreground_color_subplot,
    #     foreground_color_title,
    #     framestyle = :zerolines,
    #     left_margin,
    # legend=false, # include legend true/false
    #     legendfontcolor,
    #     legendfontfamily,
    #     legendfonthalign,
    #     legendfontrotation,
    #     legendfontsize,
    #     legendfontvalign,
    #     legendtitle,
    #     legendtitlefontcolor,
    #     legendtitlefontfamily,
    #     legendtitlefonthalign,
    #     legendtitlefontrotation,
    #     legendtitlefontsize,
    #     legendtitlefontvalign,
    margin=5mm,
    #     projection,
    #     right_margin,
    #     subplot_index,
    #     title,
    #     titlefontcolor,
    #     titlefontfamily,
    #     titlefonthalign,
    #     titlefontrotation,
    #     titlefontsize,
    #     titlefontvalign,
    #     titlelocation,
    #     top_margin

    #####################
    #       :Axis
    #####################
    #     discrete_values,
    #     draw_arrow,
    #     flip,
    #     foreground_color_axis,
    #     foreground_color_border,
    #     foreground_color_grid,
    #     foreground_color_guide,
    #     foreground_color_minor_grid,
    #     foreground_color_text,
    #     formatter,
    grid=false, # background grid true/false
    #     gridalpha,
    # gridlinewidth=0.5,
    #     gridstyle,
    #     guide,
    #     guide_position,
    #     guidefontcolor,
    #     guidefontfamily,
    #     guidefonthalign,
    #     guidefontrotation,
    #     guidefontsize,
    #     guidefontvalign,
    # ylims=(0, 3),
    # xlims=(0, 2),
    #     link,
    #     minorgrid,
    #     minorgridalpha,
    #     minorgridlinewidth,
    #     minorgridstyle,
    #     minorticks,
    #     mirror,
    #     rotation,
    # scale,
    # showaxis = false, #turns off spines and tick labels, but not ticks
    #     tick_direction,
    #     tickfontcolor,
    #     tickfontfamily,
    #     tickfonthalign,
    #     tickfontrotation,
    #     tickfontsize,
    #     tickfontvalign,
    # ticks=false, #turns off tick marks
    #     widen,
)

# - Colors from FLOW Lab template
flowblue = [
    RGB(78 / 255, 121 / 255, 167 / 255) #blue 1
    RGB(160 / 255, 203 / 255, 232 / 255) #blue 2
]

flowred = [
    RGB(225 / 255, 87 / 255, 89 / 255) #red 1
    RGB(255 / 255, 157 / 255, 154 / 255) #red 2
]

flowgreen = [
    RGB(89 / 255, 161 / 255, 79 / 255) #green 1
    RGB(140 / 255, 209 / 255, 125 / 255) #green 2
]

flowgrey = [
    RGB(57 / 255, 57 / 255, 57 / 255) #grey 1
    RGB(123 / 255, 123 / 255, 123 / 255) #grey 2
    RGB(238 / 255, 238 / 255, 238 / 255) #grey 3
]
