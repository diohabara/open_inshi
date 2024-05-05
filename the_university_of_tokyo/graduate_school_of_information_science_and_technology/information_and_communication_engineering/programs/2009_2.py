import matplotlib.pyplot as plt
import numpy as np

beta = np.linspace(0, 4, 64)
i = 2 / (1 + 4 * beta)

fig = plt.figure()
ax = fig.add_subplot(111)
ax.grid()
ax.set_xlim([0, 4])
ax.set_ylim([0, 4])
ax.set_xlabel(r"$\beta$")
ax.set_ylabel(r"$i(\beta)$", rotation=0, labelpad=20)
plt.plot(beta, i)
plt.savefig("images/2010_2.png", dpi=200)
