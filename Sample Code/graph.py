class Graph:

    def __init__(self) -> None:
        self.graph = dict()
        #self.visited = set()
       # self.result = []

    def add_vertex(self, vertex):
        if not self.graph.get(vertex):
            self.graph[vertex] = []

    def add_edge(self, start, end):
        if start in self.graph.keys():
            self.graph[start].append(end)

    
    def add_vertices(self,vertices):
        for i in vertices:
            if i not in self.graph.keys():
                self.graph[i] = []

    def add_edges(self, edges):
        if type(edges) != type([]):
            print('must be a list of tuples')
        else:
            for i in edges:
                if type(i) != type(()):
                    print("list must be a list of tuples")
                    return
                else:
                    if i[0] not in self.graph.keys():
                        return 
                    for edge in range(1, len(i)):
                        self.graph[i[0]].append(i[edge])

    '''
    def dfs(self, start):
        if start not in self.visited:
            self.result.append(start)
            self.visited.add(start)
            for neighbour in self.graph[start]:
                self.dfs(neighbour)
            return self.result
    '''
    def dfs(self, start):
        stack = [start]
        visited = []
        
        while stack:
            node = stack.pop()
            if node not in visited:
                visited.append(node)
                neighbors = self.graph[node]
                for neighbor in neighbors:
                    stack.append(neighbor)
        
        return visited

    def bfs(self,start):
        queue = [start]
        visited = [start]
        while queue:
            vertex = queue.pop(0)
            for neighbor in self.graph[vertex]:
                if neighbor not in visited:
                    visited.append(neighbor)
                    queue.append(neighbor)
        return visited

    def print_graph(self):
        for i in self.graph.keys():
            print(i, ":", self.graph[i])