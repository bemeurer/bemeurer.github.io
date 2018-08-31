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
# Real Euclidean Spaces

Real euclidean spaces have definitions of inner product and norm. Examples in \\(\mathbb R^n\\):

* The usual inner product
* The unit-radius circumference when considering an unusual inner product
* Cauchy-Schwarz inequality

Let \\(V\\) be a real vector space. A form(@) or real function
\\[ \begin{aligned} \langle\cdot,\cdot\rangle\colon V\times V &\rightarrow \mathbb R \\\\ (x, y) &\mapsto \langle x,y\rangle \end{aligned}\\ \\]
is said to be an _inner product_ if, for all \\(x, y, z \in V\\) and all \\(\alpha \in \mathbb R\\),

1. \\(\langle x,y \rangle = \langle y, x \rangle\\)
2. \\(\langle \alpha x, y\rangle = \alpha\langle x, y\rangle\\)
3. \\(\langle x+y, z\rangle = \langle x, z\rangle + \langle y, z\rangle\\)
4. \\(\langle x, x\rangle \geq 0 \wedge (\langle x, x\rangle = 0 \implies x = 0)\\)

A real linear space \\(V\\) armed with an inner product is called an (real) **Euclidean Space**.

## Examples

1. Usual inner product in \\(\mathbb R^n\\)
    * \\(\mathbb R^2\\)
    \\[ \begin{aligned} \langle x, y\rangle &= \lVert x\rVert\lVert y\rVert \cos\theta \\\\ &= x_1 y_1 + x_2 y_2 \quad\text{in }\mathbb R^2 \end{aligned}\\ \\]
    where \\(\theta\in[0, \pi]\\) is the angle between the vectors \\(x\\) and \\(y\\).
    Note that the norm of the vector \\(x\\) satisfies \\[ \lVert x\rVert^2 = \langle x, x\rangle \\]
    * \\(\mathbb R^n\\)
    \\[ \begin{aligned} \langle x, y\rangle &= x_1 y_1 + x_2 y_2 + \cdots + x_n y_n \\\\ \langle x, y\rangle &= y^Tx = x^Ty \end{aligned}\\ \\]
2. Another inner product in \\(\mathbb R^2\\)
    * **Exercise.** Determine the circumference \\(C\\) of radius \\(1\\) and centered at \\((0, 0)\\) \\[ C = \{(x_1, x_2)\in\mathbb R^2\colon \lVert(x_1, x_2)\rVert = 1\} \\]
    considering
        1. The usual inner product
        2. The inner product \\[\langle (x_1, x_2), (y_1, y_2) \rangle = \frac{1}{9} x_1y_1 + \frac{1}{4} x_2y_2 \\]

## Norm and the triangle inequality

For all vectors \\(x\in V\\), we define the **norm** of \\(x\\) as
\\[ \lVert x\rVert = \sqrt{\langle x, x\rangle} \\]
such that, for all \\(x\in V\\) and all \\(\alpha\in\mathbb R\\) we have

1. \\(\lvert x\rVert\geq 0\qquad \text{and}\qquad \lVert x\rVert \iff x = 0\\)
2. \\(\lVert \alpha x\rVert = \lvert\alpha\rvert\lVert x\rVert\\)
3. \\(\lVert x + y\rVert\leq\lVert x\rVert + \lVert y\rVert \qquad\qquad \text{(triangle inequality)} \\)

A function \\(V \to \mathbb R\\) that satisfies the above conditions is said to be a **norm** defined in \\(V\\).

The proof that the function we defined earlier and called "inner product" satisfies the triangle inequality will be done at a later point, since it relies on the Cauchy-Schwarz inequality.

## Cauchy-Schwarz Inequality

**Theorem 1.** _Let \\(V\\) be an euclidean space. For all \\(x, y \in V\\) we have_
\\[ \lvert\langle x, y\rangle\rvert \leq \lVert x\rVert \lVert y\rVert \\]
Note that in \\(\mathbb R^2\\) and \\(\mathbb R^3\\) we have:
\\[ \langle x, y\rangle = \lVert x\rVert\lVert y\rVert\cos\theta \\]
where
\\[ \lvert\langle x, y\rangle\rvert = \lVert x\rVert\lVert y\rVert\lvert \cos\theta\rvert \leq \lVert x\rVert \lVert y\rVert \\]

## Distance

For all \\(x, y \in V\\), we define the **distance from \\(x\\) to \\(y\\)** as
\\[ d(x, y) = \lVert x - y\rVert \\]

## Parallelogram Law

For all vectors \\(x, y \in V\\), we have
\\[ \lVert x + y\rVert^2 + \lVert x - y\rVert^2 = 2(\lVert x\rVert^2 + \lVert y\rVert^2) \\]

## Example

An inner product in \\(\mathbb M_{2\times 2}(\mathbb R)\\).

For all matrices \\(A, B \in \mathbb M_{2\times 2}(\mathbb R)\\) we define
\\[ \begin{aligned} \langle A, B\rangle &= tr(B^T A) \\\\ &= \sum^2_{i, j=1}{a_{ij}b_{ij}} \end{aligned}\\ \\]
with \\(A = [a_{ij}]\\) and \\(B = [b_{ij}]\\)[^1]. Note that, letting \\(B_c\\) be the canonical basis of \\( \mathbb{M}_{2\times 2}(\mathbb{R}) \\),

$$ \langle A, B \rangle_{\mathbb M_{2\times 2}(\mathbb R)} = \langle (A)_{B_c}, (B)_{B_c}\rangle_{\mathbb R^4}$$

meaning that the inner product defined above respects the isomorphism \\( A \mapsto (A)_{B_c}\\) between \\(\mathbb M_{2\times 2}(\mathbb R)\\) and \\(\mathbb R^4\\)

## Proof of the triangle inequality

\\[ \begin{aligned} \lVert x + y\rVert^2 &= \langle x+y, x+y\rangle \\\\ &= \langle x, x\rangle + 2\langle x, y\rangle + \langle y, y\rangle \\\\ &= \lVert x\rVert^2 + 2\langle x, y\rangle + \lVert y\rVert^2 \qquad (\text{Inner product in terms of the norm})\\\\ &\leq \lVert x\rVert^2 + 2\lvert\langle x, y\rangle\rvert + \lVert y\rVert^2 \\\\ &\leq \lVert x\rVert^2 + 2\lVert x\rVert\lVert y\rVert + \lVert y\rVert^2 \qquad (\text{Cauchy-Schwartz inequality}) \\\\ &=(\lVert x\rVert + \lVert y\rVert)^2 \end{aligned}\\ \\]

Where
\\[ \lvert x + y\rVert \leq \lVert x\rVert + \lVert y\rVert \qquad_\blacksquare\\]

[^1]: Note that \\(tr(B^T A) = tr(A^T B)\\), which allows us to define \\[ \langle A, B\rangle = tr(A^T B) \\]