import math

def calculate_energy(n, j, alpha=1/137.036):  # Default value for alpha is the fine-structure constant
    Z = 1  # Atomic number for hydrogen
    term1=alpha
    term2=n-(j+1/2)+math.sqrt((j+1/2)**2-alpha**2)
    energy=1/(1+(term1/term2)**2)

    return energy

# Example usage:
n_value = 1
j_value = 1/2
energy_1s = calculate_energy(n_value, j_value)

print(f"The energy of the 1s state is approximately {energy_1s:.4f} mc^2")

