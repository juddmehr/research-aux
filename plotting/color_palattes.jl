import Colors.RGB

#---------------------------------#
#        FLOW Lab Official        #
#---------------------------------#
# Note: this will generally match the FLOW Lab official presentation theme if you want to match plot colors to headings and accent colors in presentations

color_palette = [
    RGB(78 / 255, 121 / 255, 167 / 255) # blue 1
    RGB(225 / 255, 87 / 255, 89 / 255) # red 1
    RGB(57 / 255, 57 / 255, 57 / 255) # grey 1
    RGB(89 / 255, 161 / 255, 79 / 255) # green 1
    RGB(160 / 255, 203 / 255, 232 / 255) # blue 2
    RGB(255 / 255, 157 / 255, 154 / 255) # red 2
    RGB(140 / 255, 209 / 255, 125 / 255) # green 2
    RGB(123 / 255, 123 / 255, 123 / 255)  #grey 2
]

#---------------------------------#
#         BYU Navy Based          #
#---------------------------------#
# Note: this is what I used for my first Journal paper: Mehr, J., Alvarez, E. J., and Ning, A., “Interactional Aerodynamics Analysis of a Multi-Rotor Energy Kite,” Wind Energy, Vol. 28, No. 1, p. e2957, Jan. 2025. doi:10.1002/we.2957
# https://onlinelibrary.wiley.com/doi/10.1002/we.2957

color_palette = [
    RGB(0.0, 46.0 / 255.0, 93.0 / 255.0), # BYU Blue
    RGB(155.0 / 255.0, 0.0, 0.0), # "BYU" Red
    RGB(128.0 / 255.0, 128.0 / 255.0, 128.0 / 255.0), # Middle Gray
    RGB(162.0 / 255.0, 227.0 / 255.0, 162.0 / 255.0), # Light Green
    RGB(243.0 / 255.0, 209.0 / 255.0, 243.0 / 255.0), # Pink
    RGB(205.0 / 255.0, 179.0 / 255.0, 0.0), # Yellow
    RGB(161.0 / 255.0, 161.0 / 255.0, 226.0 / 255.0), # Purple
]

#---------------------------------#
#         BYU Royal Based         #
#---------------------------------#
# Note: this is the color set for my dissertation as the royal blue matches the royal blue of the disseration color scheme (though you'll have to make sure this is the right one, there are 3 options in the class file, I went with #005CAB which matches the Engineering College Logo blue, rather than the official university blue or the blue Dr. Ning used in development)

color_palette = [
    RGB(0, 92 / 255, 171 / 255), # royal blue #005cab
    RGB(190 / 255, 76 / 255, 77 / 255), # red #be4c4d
    RGB(105 / 255, 174 / 255, 95 / 255), # green #69ae5f
    RGB(167 / 255, 84 / 255, 164 / 255), # purple #a754a4
    RGB(190 / 255, 147 / 255, 61 / 255), # yellow #be933d
    RGB(128 / 255, 128 / 255, 128 / 255), # middle gray #808080
]

#---------------------------------#
#        Dark/Light Combos        #
#---------------------------------#
# Note: descent color scheme if you're just comparing two things, includes dark and light blue, red and green.

color_palette = [
    #polynesian blue
    RGB(0 / 255, 75 / 255, 150 / 255),
    #004B96
    #argentinian blue
    RGB(100 / 255, 175 / 255, 250 / 255),
    #64AFFA
    #imperial red
    RGB(250 / 255, 75 / 255, 75 / 255),
    #FA4B4B
    #melon
    RGB(250 / 255, 175 / 255, 150 / 255),
    #FAAF96
    #lime green
    RGB(75 / 255, 200 / 255, 75 / 255),
    #4BC84B
    #light green
    RGB(150 / 255, 250 / 255, 150 / 255),
    #96FA96
]

#---------------------------------#
#   Colorblind Friendly Bright    #
#---------------------------------#
# Note: this is the default in the DuctAPE plotting functions

color_palette = [
    RGB(1 / 255, 149 / 255, 226 / 255), # blue
    RGB(189 / 255, 10 / 255, 53 / 255), # red
    RGB(76 / 255, 173 / 255, 59 / 255), # green
    RGB(238 / 255, 167 / 255, 46 / 255), # orange
    RGB(155 / 255, 82 / 255, 162 / 255), # purple
    RGB(128 / 255, 128 / 255, 128 / 255), # gray
]
