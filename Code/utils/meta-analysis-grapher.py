import matplotlib.pyplot as plt
import networkx as nx


class Study:
  def __init__(self, name="", other_info=[], antecedent="", consequent="", probability=0.0, strength=0.0):
    self.name = name
    self.first_author = other_info
    self.antecedent = antecedent
    self.consequent = consequent
    self.probability = probability
    self.strength = strength
  def is_valid_probability(self):
  	if (0.0 <= self.probability) and (self.probability <= 1.0):
  		return True
  	else:
  		print("Error: Invalid probability")
  		return False
  def is_valid_strength(self):
  	if (0.0 <= self.strength) and (self.strength <= 1.0):
  		return True
  	else: 
  		print("Error: Invalid strength")
  		return False


p1 = Study("John", None, "a", "b",0.10,123.3)

print(p1.name)
Study.is_valid_probability(p1)



G = nx.cubical_graph()
pos = nx.spring_layout(G, seed=3113794652)  # positions for all nodes

# nodes
options = {"edgecolors": "tab:gray", "node_size": 800, "alpha": 0.9}
nx.draw_networkx_nodes(G, pos, nodelist=[0, 1, 2, 3], node_color="tab:red", **options)
nx.draw_networkx_nodes(G, pos, nodelist=[4, 5, 6, 7], node_color="tab:blue", **options)

# edges
nx.draw_networkx_edges(G, pos, width=1.0, alpha=0.5)
nx.draw_networkx_edges(
    G,
    pos,
    edgelist=[(0, 1), (1, 2), (2, 3), (3, 0)],
    width=8,
    alpha=0.5,
    edge_color="tab:red",
)
nx.draw_networkx_edges(
    G,
    pos,
    edgelist=[(4, 5), (5, 6), (6, 7), (7, 4)],
    width=8,
    alpha=0.5,
    edge_color="tab:blue",
)


# some math labels
labels = {}
labels[0] = r"$a$"
labels[1] = r"$b$"
labels[2] = r"$c$"
labels[3] = r"$d$"
labels[4] = r"$e$"
labels[5] = r"$\beta$"
labels[6] = r"$\gamma$"
labels[7] = r"$\delta$"
nx.draw_networkx_labels(G, pos, labels, font_size=22, font_color="whitesmoke")

plt.tight_layout()
plt.axis("off")
plt.show()

# labels
nx.draw_networkx_labels(G, pos, font_size=20, font_family="sans-serif")

ax = plt.gca()
ax.margins(0.08)
plt.axis("off")
plt.tight_layout()
plt.show()

