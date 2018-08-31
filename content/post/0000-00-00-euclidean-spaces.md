---
title: "Euclidean Spaces"
date: 2018-08-30T00:00:00Z
draft: false 
tags:
  - notes
  - linear
  - algebra
  - mathematics
categories:
  - notes
comments: true 
markup: "mmark"
---
## Real euclidean spaces

Real euclidean spaces have definitions of inner product and norm. Examples in
\\(\mathbb R^n\\):

* The usual inner product
* The unit-radius circumference when considering an unusual inner product
* Cauchy-Schwarz inequality

Let \\(V\\) be a real vector space. A form(@) or real function \\[
\begin{aligned} \langle\cdot,\cdot\rangle\colon V\times V &\rightarrow \mathbb R
\\\\ (x, y) &\mapsto \langle x,y\rangle \end{aligned}\\ \\] is said to be an
_inner product_ if, for all \\(x, y, z \in V\\) and all \\(\alpha \in \mathbb
R\\),

1. \\(\langle x,y \rangle = \langle y, x \rangle\\)
2. \\(\langle \alpha x, y\rangle = \alpha\langle x, y\rangle\\)
3. \\(\langle x+y, z\rangle = \langle x, z\rangle + \langle y, z\rangle\\)
4. \\(\langle x, x\rangle \geq 0 \wedge (\langle x, x\rangle = 0 \implies x =
   0)\\)

A real linear space \\(V\\) armed with an inner product is called an (real)
**Euclidean Space**.

### Examples

1. Usual inner product in \\(\mathbb R^n\\)
    * \\(\mathbb R^2\\) \\[ \begin{aligned} \langle x, y\rangle &= \lVert
      x\rVert\lVert y\rVert \cos\theta \\\\ &= x_1 y_1 + x_2 y_2 \quad\text{in
      }\mathbb R^2 \end{aligned}\\ \\] where \\(\theta\in[0, \pi]\\) is the
      angle between the vectors \\(x\\) and \\(y\\). Note that the norm of the
      vector \\(x\\) satisfies \\[ \lVert x\rVert^2 = \langle x, x\rangle \\]
    * \\(\mathbb R^n\\) \\[ \begin{aligned} \langle x, y\rangle &= x_1 y_1 + x_2
      y_2 + \cdots + x_n y_n \\\\ \langle x, y\rangle &= y^Tx = x^Ty
      \end{aligned}\\ \\]
2. Another inner product in \\(\mathbb R^2\\)
    * **Exercise.** Determine the circumference \\(C\\) of radius \\(1\\) and
      centered at \\((0, 0)\\) \\[ C = \{(x_1, x_2)\in\mathbb R^2\colon
      \lVert(x_1, x_2)\rVert = 1\} \\] considering
        1. The usual inner product
        2. The inner product \\[\langle (x_1, x_2), (y_1, y_2) \rangle =
           \frac{1}{9} x_1y_1 + \frac{1}{4} x_2y_2 \\]

### Norm and the triangle inequality

For all vectors \\(x\in V\\), we define the **norm** of \\(x\\) as \\[ \lVert
x\rVert = \sqrt{\langle x, x\rangle} \\] such that, for all \\(x\in V\\) and all
\\(\alpha\in\mathbb R\\) we have

1. \\(\lvert x\rVert\geq 0\qquad \text{and}\qquad \lVert x\rVert \iff x = 0\\)
2. \\(\lVert \alpha x\rVert = \lvert\alpha\rvert\lVert x\rVert\\)
3. \\(\lVert x + y\rVert\leq\lVert x\rVert + \lVert y\rVert \qquad\qquad
   \text{(triangle inequality)} \\)

A function \\(V \to \mathbb R\\) that satisfies the above conditions is said to
be a **norm** defined in \\(V\\).

The proof that the function we defined earlier and called "inner product"
satisfies the triangle inequality will be done at a later point, since it relies
on the Cauchy-Schwarz inequality.

### Cauchy-Schwarz Inequality

**Theorem 1.** _Let \\(V\\) be an euclidean space. For all \\(x, y \in V\\) we
have_ \\[ \lvert\langle x, y\rangle\rvert \leq \lVert x\rVert \lVert y\rVert \\]
Note that in \\(\mathbb R^2\\) and \\(\mathbb R^3\\) we have: \\[ \langle x,
y\rangle = \lVert x\rVert\lVert y\rVert\cos\theta \\] where \\[ \lvert\langle x,
y\rangle\rvert = \lVert x\rVert\lVert y\rVert\lvert \cos\theta\rvert \leq \lVert
x\rVert \lVert y\rVert \\]

### Distance

For all \\(x, y \in V\\), we define the **distance from \\(x\\) to \\(y\\)** as
\\[ d(x, y) = \lVert x - y\rVert \\]

### Parallelogram Law

For all vectors \\(x, y \in V\\), we have \\[ \lVert x + y\rVert^2 + \lVert x -
y\rVert^2 = 2(\lVert x\rVert^2 + \lVert y\rVert^2) \\]

### Example

An inner product in \\(\mathbb M_{2\times 2}(\mathbb R)\\).

For all matrices \\(A, B \in \mathbb M_{2\times 2}(\mathbb R)\\) we define \\[
\begin{aligned} \langle A, B\rangle &= tr(B^T A) \\\\ &= \sum^2_{i,
j=1}{a_{ij}b_{ij}} \end{aligned}\\] with \\(A = [a_{ij}]\\) and \\(B =
[b_{ij}]\\)[^1]. Note that, letting \\(B_c\\) be the canonical basis of
\\(\mathbb M_{2\times 2}(\mathbb R)\\),

$$ \langle A, B \rangle_{\mathbb M_{2\times 2}(\mathbb R)} = \langle (A)_{B_c},
(B)_{B_c}\rangle_{\mathbb R^4}$$

meaning that the inner product defined above respects the isomorphism \\( A
\mapsto (A)_{B_c}\\) between \\(\mathbb M_{2\times 2}(\mathbb R)\\) and
\\(\mathbb R^4\\)

### Proof of the triangle inequality

\\[ \begin{aligned} \lVert x + y\rVert^2 &= \langle x+y, x+y\rangle \\\\ &=
\langle x, x\rangle + 2\langle x, y\rangle + \langle y, y\rangle \\\\ &= \lVert
x\rVert^2 + 2\langle x, y\rangle + \lVert y\rVert^2 \qquad (\text{Inner product
in terms of the norm})\\\\ &\leq \lVert x\rVert^2 + 2\lvert\langle x,
y\rangle\rvert + \lVert y\rVert^2 \\\\ &\leq \lVert x\rVert^2 + 2\lVert
x\rVert\lVert y\rVert + \lVert y\rVert^2 \qquad (\text{Cauchy-Schwartz
inequality}) \\\\ &=(\lVert x\rVert + \lVert y\rVert)^2 \end{aligned}\\]

Where \\[ \lVert x + y\rVert \leq \lVert x\rVert + \lVert y\rVert
\qquad_\blacksquare\\]

---

## Gram Matrix

Let \\(V\\) be a real euclidean space, and \\(B = (b_1, b_2, \ldots, b_n)\\) a
basis of \\(V\\). With \\(x, y \in V\\) such that \\(x_B = (\alpha_1, \alpha_2,
\ldots, \alpha_n)\\) and \\(y_B = \beta_1, \beta_2, \ldots, \beta_n\\), we have
\\[ \begin{aligned} \langle x, y\rangle &= \langle\alpha_1 b_1 + \alpha_2 b_2 + \cdots + \alpha_n b_n, \beta_1 b_1 + \beta_2 b_2 + \cdots + \beta_n b_n\rangle
\\\\ &= \begin{bmatrix}\beta_1 & \beta_2 & \ldots & \beta_n\end{bmatrix} \underbrace{\begin{bmatrix}\langle b_1, b_1\rangle & \langle b_2, b_1\rangle &\ldots & \langle b_n, b_1\rangle
\\\\ \langle b_1, b_2\rangle & \langle b_2, b_2\rangle &\ldots & \langle b_n, b_2\rangle
\\\\ \vdots
\\\\ \langle b_1, b_n\rangle & \langle b_2, b_n\rangle &\ldots & \langle b_n, b_n\rangle
\\\\ \end{bmatrix}}_G \begin{bmatrix}\alpha_1
\\\\ \alpha_2
\\\\ \vdots
\\\\ \alpha_n\end{bmatrix} \end{aligned}\\ \\]

Therefore, given an inner product in \\(V\\) and a basis \\(B\\), it is possible
to determine a matrix \\(G\\) such that \\[\langle x,y\rangle = y_B^T Gx_B\\]

This matrix \\(G = [g_{ij}]\\), where for all \\(i, j = 1, \ldots, n\\) we have
\\(g_{ij} = \langle b_j, b_i \rangle\\) is called the **Gram matrix** of the set
of vectors \\(\\{b_1, b_2, \ldots, b_n\\}\\).

Note that:

* \\(G\\) is a symmetric (\\(G = G^T\\)) \\(n\times n\\) real matrix.
* For all non-null vectors \\(x\in V\\) \\[x_B^T Gx_b > 0\\]

A square real matrix \\(A\\) of order \\(k\\) is said to be **positive
definite**(@) if, for all non-null vectors \\(x\in\mathbb R^n\\), \\(x^T Ax >
0\\)

**Proposition 1.** _A symmetric real matrix is positive definite iff all your
proper values are positive._

**Theorem 2.** _Let \\(A\\) be a symmetric real matrix of order \\(n\\). The
following statements are equivalent._

1. _The expression \\[\langle x, y\rangle = y^T Ax\\] defines an inner product
   in \\(\mathbb R^n\\)_
2. _\\(A\\) is positive definite._

### Exercise

Consider that \\(\mathbb R^n\\) is armed with the canonical basis
\\(\Epsilon_n\\). What is the Gram matrix \\(G\\) that corresponds to the usual
inner product in \\(\mathbb R^n\\)? Also, which Gram matrix corresponds to the
inner product in item (2) of the previous exercise?

---

## Complex euclidean spaces and orthogonal vectors

Example of complex euclidean space: usual inner product in \\(\mathbb C^n\\).

Let \\(V\\) be a complex vector space. A complex function or form
\\[ \begin{aligned}\langle\cdot,\cdot\rangle\colon V \times V &\to \mathbb C \\\\ (x, y) &\mapsto \langle x, y\rangle\end{aligned} \\]
is said to be an **inner product** if, for all \\(x, y, z \in V\\) and all \\(\alpha \in \mathbb C\\)

1. \\(\langle x, y\rangle = \overline{\langle y, x\rangle}\\)
2. \\(\langle \alpha x, y\rangle = \alpha\langle x,y\rangle\\)
3. \\(\langle x + y, z\rangle = \langle x, z\rangle + \langle y, z\rangle\\)
4. \\(\langle x, x\rangle \geq 0 \wedge (\langle x, x\rangle = 0 \implies x =
   0)\\)

A complex vector space \\(V\\) armed with an inner product is called a (complex)
**euclidean space**.

Much like with real euclidean spaces, we define the **norm** of a vector as
\\[\lVert x\rVert = \sqrt{\langle x, x\rangle}\\] and the **distance from
\\(x\\) to \\(y\\) as \\[d(x, y) = \lVert x - y\rVert\\]

**Example.** Usual inner product in \\(\mathbb C^n\\). Let \\(x = (x_1, x_2,
\ldots, x_n)\\) and \\(y_1, y_2, \ldots, y_n\\) be vectors in \\(\mathbb C^n\\),
we define \\[\langle x, y\rangle = x_1\overline{y}_1 + x_2\overline{y}_2 +
\cdots + x_n\overline{y}_n\\] and therefore \\[\langle x, y\rangle =
\overline{y}^T x\\] With regards to the norm we have \\[\lvert x\rVert^2 =
\langle x, x\rangle = x_1\overline{x}_1 + x_2\overline{x}_2 + \cdots +
x_n\overline{x}_n\\] or \\[\lVert x\rVert = \sqrt{\lVert x, x\rVert} =
\sqrt{\lvert x_1\rvert^2 + \lvert x_2\rvert^2 + \cdots + \lvert x_n\rvert^2}\\]

All the remaining results that were presented regarding real euclidean spaces
are also true for complex euclidean spaces (Cauchy-Schwartz, triangle
inequality, parallelogram law, ...).

### Gram Matrix

Let \\(V\\) be a complex euclidean space, and let \\(B = (b_1, b_2, \ldots,
b_n)\\) be a basis of \\(V\\). With \\(x, y \in V\\) such that \\(x_B=(\alpha_1,
\alpha_2, \dots, \alpha_n)\\) and \\(y_B=(\beta_1, \beta_2, \dots, \beta_n)\\),
we have 
\\[ \begin{aligned} \langle x, y\rangle &= \langle\alpha_1 b_1 +
\alpha_2 b_2 + \cdots + \alpha_n b_n, \beta_1 b_1 + \beta_2 b_2 + \cdots +
\beta_n b_n\rangle
\\\\ &= \begin{bmatrix}\overline{\beta}_1 & \overline{\beta}_2 & \ldots & \overline{\beta}_n\end{bmatrix} \underbrace{\begin{bmatrix}\langle b_1, b_1\rangle & \langle b_2, b_1\rangle &\ldots & \langle b_n, b_1\rangle
\\\\ \langle b_1, b_2\rangle & \langle b_2, b_2\rangle &\ldots & \langle b_n, b_2\rangle
\\\\ \vdots
\\\\ \langle b_1, b_n\rangle & \langle b_2, b_n\rangle &\ldots & \langle b_n, b_n\rangle
\\\\ \end{bmatrix}}_G \begin{bmatrix}\alpha_1
\\\\ \alpha_2
\\\\ \vdots
\\\\ \alpha_n\end{bmatrix} \end{aligned}\\ \\]

Therefore, given an inner product in \\(V\\) and a basis \\(B\\), it is possible to determine a matrix \\(G\\) such that 
\\[\langle x,y\rangle = \overline{y}_B^T Gx_B\\]

This matrix \\(G = [g_{ij}]\\), where for all \\(i, j = 1, \ldots, n\\) we have \\(g_{ij} = \langle
b_j, b_i \rangle\\) is called the **Gram matrix** of the set of vectors \\(\\{b_1, b_2, \ldots, b_n\\}\\).

Note that:

* \\(G\\) is an \\(n\times n\\) complex matrix such that (\\(G =
  \overline{G}^T\\)).
* For all non-null vectors \\(x\in V\\) \\[\overline{x}_B^T Gx_b > 0\\]

A complex square matrix \\(A\\) of order \\(k\\) is said to be **hermitian** if
\\(A = \overline{A}^T\\). Note that the spectrum \\(\sigma(A)\\) of a hermitian
is contained in \\(\mathbb R\\).

A hermitian matrix \\(A\\) of order \\(k\\) is said to be **positive definite**
if, for all non-null vectors \\(x\in\mathbb C^n\\), \\(\overline{x}^T Ax > 0\\).

**Proposition 2.** _A hermitian matrix is positive definite iff all of it's proper values are positive._

**Theorem 3.** _Let \\(A\\) be a hermitian matrix of order \\(n\\). The following statements are equivalent._

1. _The expression \\[\langle x, y\rangle = \overline{y}^T Ax\\] defines an inner product in \\(\mathbb C^n\\)_
2. _A is positive definite._

### Angle between two vectors

Let \\(x\\) and \\(y\\) be non-null vectors belonging to some **real** euclidean space \\(V\\). We define the _angle_ between the vectors \\(x\\) and \\(y\\) as being the angle \\(\theta\\), with \\(0\leq\theta\leq\pi\\), such that
\\[\cos\theta = \frac{\langle x, y\rangle}{\lVert x\rVert \lVert y\rVert}\\]
With Cauchy-Schwartz we can see that \\(\lvert\cos\theta\rvert\leq 1\\).

Let \\(x\\) and \\(y\\) be (possibly null) vectors belonging to some **real or complex** euclidean space \\(V\\). The vectors \\(x\\) and \\(y\\) are said to be **orthogonal**, written \\(x \perp y\\), if
\\[\langle x, y\rangle = 0\\]

**Exercise.** What are the orthogonal vectors to \\(v = (1, 1, 0)\\) considering \\(\mathbb R^3\\) with the usual inner product?

**Theorem 4. (Pythagoras Theorem)** Let \\(x\\) and \\(y\\) be orthogonal vectors of some euclidean space \\(V\\). Then
\\[\lVert x + y\rVert^2 = \lVert x\rVert^2 + \lVert y \rVert^2\\]

_Proof._ Exercise

---

## Orthogonal complement

[^1]: Note that \\(tr(B^T A) = tr(A^T B)\\), which allows us to define \\[\langle A, B\rangle = tr(A^T B) \\]