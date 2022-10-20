# # Generate sysdata for colors
#
# # official color swatch
# uofsc_colors <- c(
#   #primary
#   `garnet` = '#73000a',
#   `black` = "#000000",
#   `white` = "#ffffff",
#
#   #neutral
#   `black_90` = '#363636',
#   `black_70` = '#5C5C5C',
#   `black_50` = '#A2A2A2',
#   `black_30` = '#C7C7C7',
#   `black_10` = '#ECECEC',
#   `warmgrey` = '#676156',
#   `sandstorm` = '#FFF2E3',
#
#   #accent
#   `rose` = '#CC2E40',
#   `altantic` = '#466A9F',
#   `congaree` = '#1F414D',
#   `horseshoe` = '#65780B',
#   `grass` = '#CED318',
#   `honeycomb` = '#A49137',
#
#   #special
#   `darkgarnet` = '#570008',
#   `azalea` = '#844247'
# )
#
# uofsc_palettes <- list(
#   'simple' = uofsc_colors[c('garnet','black','white')],
#   'formal' = uofsc_colors[c('garnet','white','black','black_10')],
#   'vibrant' = uofsc_colors[c('garnet','rose','black','white')],
#   'optimisitic' = uofsc_colors[c('garnet','white','atlantic','congaree','grass')],
#   'trustworty' = uofsc_colors[c('garnet','white','sandstorm','black')],
#   'welcoming' = uofsc_colors[c('garnet','white','honeycomb','congaree')],
#   'confident' = uofsc_colors[c('garnet','darkgarnet','azalea','black')],
#   'committed' = uofsc_colors[c('garnet','white','warmgrey','black')],
#   'natural' = uofsc_colors[c('azalea','atlantic','congaree',
#                            'horseshoe','grass','honeycomb')],
#   'contrast' = uofsc_colors[c('darkgarnet','garnet','azalea','sandstorm',
#                           'black_50','black_70','black')]
# )
#
# gguofsc_db <- list(
#   cols = uofsc_colors,
#   palettes = uofsc_palettes
# )
#
#
# save(gguofsc_db, file = '../R/sysdata.rda')
#
