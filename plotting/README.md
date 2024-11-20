## Some General Notes on Colors:

The default color palettes are just fine, and have some good though behind them, but at first I wanted to do my own thing, and then I thought it would be good to use BYU colors.

I started with the BYU Navy-based color scheme which worked well for me for a while, but then I got tired of how dark it was and how the Navy was not very distinguishable from black. In this color scheme, I pretty much manually set things up so that the red "matched" the navy blue in terms of darkness/boldness, but there wasn't any science to it.

I then generatated the BYU royal-based color scheme after it was decided to use a royal blue in the dissertation class.  Note that this isn't actually BYU royal, but rather the engineering logo royal.  They are somewhat close, but they are distinct.
At this point, I attempted to get a colorblind friendly color scheme, but I found with both BYU blues, that they just weren't placed well in the color space to have good contrasting colors that were colorblind friendly.  I did the best I could using sites like:
- https://davidmathlogic.com/colorblind/
- https://medialab.github.io/iwanthue/

I found the iwanthue site to be particularly helpful and I used it to generate the color scheme used as a default in the DuctAPE plotting recipes. In this case, I ended up finding a blue that worked pretty well.
If you want "softer" colors rather than bright ones, optimal color-blind friendly palattes don't really include blue but rather some dusty purples and puke yellows which I personally don't find very attractive.

Another thing to consider is contrast to the background.  I was pointed to
- https://venngage.com/tools/accessible-color-palette-generator
which you can use to see if your colors have sufficient contrast to a white background to be easily discernable.  I haven't checked most of these, but the BYU royal based on passes for all colors.
This process is probably more difficult for dark backgrounds, since there's no set color for dark (black is pretty uncommon, and there are tons of grays that could be used), but perhaps it could be done. (might be nice to optimize your IDE color theme to reduce eye strain or something)

## Some Notes on Sizing for LaTeX

I'm not quite sure the assumptions that go into this, but something about converting points, pixels, dpi, inches, etc. leads to needed to take the desired size of the figure in inches and multiplying by 96 to get it sized correctly in LaTeX
`plot_sizing.jl` is a set of convenience functions that allows you to set figure sizes for LaTeX manually or with several defaults I have chosen.


