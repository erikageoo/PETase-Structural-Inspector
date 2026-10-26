# Fetch PETase structure from the Protein Data Bank
fetch 5xg0, async=0

# Clean up and visual styling
hide everything
show cartoon, 5xg0
color white, 5xg0

# Colour secondary structures
color marine, ss h  # Alpha helices
color firebrick, ss s  # Beta sheets

# Identify and isolate the active site
select active_site, resi 160+206+237 and 5xg0
show sticks, active_site
color yellow, active_site

# Center and render view
zoom active_site, 10
background white
ray 800, 600
png petase_active_site.png
