from graph import Graph
graph = {
    'A' : ['B','C'],
    'B' : ['D', 'E'],
    'C' : ['F'],
    'D' : [],
    'E' : ['F'],
    'F' : []
}


g = Graph()
g.add_vertex('A')
g.add_vertex('B')
g.add_vertex('C')
g.add_vertex('D')
g.add_vertex('E')
g.add_vertex('F')
g.add_edge('A','B')
g.add_edge('A','C')
g.add_edge('B','D')
g.add_edge('B','E')
g.add_edge('C','F')
g.add_edge('E','F')


print(g.dfs('A'))
print(g.bfs('A'))

h = Graph()
h.add_vertices(['A','B','C','H'])
h.add_edges([('A','B','C'),('B','C')])
h.print_graph()