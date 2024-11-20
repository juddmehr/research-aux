N = 100
s = collect(range(0,stop=1,length=N))
byublue = [0, 46, 93]/255 #RGB
byured = [93, 0, 0]/255 #RGB
include("pud_colormap.jl")
rgb = diverging_map(s,byublue,byured)

f = open("byublue_pu.xml","w")
write(f,"<ColorMaps>\n<ColorMap space=\"RGB\" indexLookup=\"false\" name=\"byunavy\">\n")
for i = 1:N
    write(f,"<Point x=\"$(s[i])\" o=\"1\" r=\"$(rgb[i,1])\" g=\"$(rgb[i,2])\" b=\"$(rgb[i,3])\"/>\n")
end
write(f,"<NaN r=\"0.25\" g=\"0\" b=\"0\"/>\n</ColorMap>\n</ColorMaps>")
close(f)