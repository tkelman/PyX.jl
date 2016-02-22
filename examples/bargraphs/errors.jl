
# Original Python:

#   from random import random
#   from pyx import *

#   g = graph.graphxy(width=8, x=graph.axis.bar())
#   g.plot(graph.data.file("minimal.dat", xname=0, y=2, stack=3,
#                       dy="1+random()", dstack="1+random()",
#                       context={"random": random}),
#       [graph.style.errorbar(),
#           graph.style.stackedbarpos("stack"),
#           graph.style.bar([color.rgb.green]),
#           graph.style.range({"y": "stack"}),
#           graph.style.errorbar()])
#   g.writeEPSfile("errors")
#   g.writePDFfile("errors")
#   g.writeSVGfile("errors")

using PyX

using PyCall
@pyimport random

g = graph.graphxy(width=8, x=graph_axis.bar())
plot(g, graph_data.file("examples/bargraphs/minimal.dat", xname=0, y=2, stack=3,
                    dy="1+random()", dstack="1+random()",
                    context=Dict("random"=>random.random)),
    [graph_style.errorbar(),
     graph_style.stackedbarpos("stack"),
     graph_style.bar([color_rgb.green]),
     graph_style.range(Dict("y"=>"stack")),
     graph_style.errorbar()])
writeEPSfile(g, "errors")
writePDFfile(g, "errors")
