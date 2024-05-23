import numpy as np

# (1) function régression lineaire
def linear_regression(X, Y):
    n = len(X)
    sum_x = np.sum(X)
    sum_y = np.sum(Y)
    sum_xy = np.sum(X * Y)
    sum_xx = np.sum(X * X)
    
    a = (sum_xy - (sum_x * sum_y) / n) / (sum_xx - (sum_x ** 2) / n)
    b = (sum_y - a * sum_x) / n
    
    return a, b

# (2) barycentre 1
def barycentre_one(x, p):
    return np.sum(x * p) / np.sum(p)

# (3) barycentre 2
def barycentre_two(x, y):
    b2 = [(x[i] + y[i] + y[(i+1) % len(y)]) / 3 for i in range(len(x))]
    return b2

# (5) échantillonage
def sample_data(X, Y, sample_size):
    indices = np.random.choice(len(X), sample_size, replace=False)
    return X[indices], Y[indices]

# (6) gradient descent
def gradient_descent(X, Y, learning_rate=0.01, iterations=1000):
    m = len(Y)
    theta0, theta1 = 0, 0
    for _ in range(iterations):
        Y_pred = theta0 + theta1 * X
        d_theta0 = (1/m) * np.sum(Y_pred - Y)
        d_theta1 = (1/m) * np.sum((Y_pred - Y) * X)
        theta0 -= learning_rate * d_theta0
        theta1 -= learning_rate * d_theta1
    return theta0, theta1

# (7) test gradient descent
def test_gradient_descent(X, Y):
    theta0, theta1 = gradient_descent(X, Y)
    print("Gradient Descent coefs: theta0 =", theta0, "theta1 =", theta1)

# donnée test
X = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19])
Y = np.array([1, 1, 2, 2, 4, 4, 6, 7, 7, 8, 10, 10, 10, 12, 12, 14, 14, 14, 14])
P = np.array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])

# calcul des coef de régression linéaire
a, b = linear_regression(X, Y)
print("Linear Regression coefs: a =", a, "b =", b)

# calcul de barycentre 1
B1 = barycentre_one(X, P)
print("B1 =", B1)

# test barycentre 2
B2 = barycentre_two(X, Y)
print("B2 =", B2)

# échantillonnage
sample_size = 5
X_sample, Y_sample = sample_data(X, Y, sample_size)
print("Echantillon: X_sample =", X_sample, "Y_sample =", Y_sample)

# test de l'algorithme de GD
test_gradient_descent(X, Y)
