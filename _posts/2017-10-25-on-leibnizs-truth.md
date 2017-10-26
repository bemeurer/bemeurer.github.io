---
title: "On Leibniz's Concept-Containment Theory of Truth"
excerpt: "A quick review of Leibniz's Concept-Containment and an attempt at formalization"
layout: post
categories: articles
tags:
  - philosophy
  - logic
  - theory
  - leibniz
  - truth
comments: true
share: true
---

We begin by defining a statement as being any sentence of form
\begin{equation}
    \newcommand{lqt}{\unicode{x201C}}
    \newcommand{rqt}{\unicode{x201D}}
    \mathcal S + \phi
\end{equation}
Where $$\mathcal S$$ is a *subject* and $$\phi$$ is a *predicate*. The sentences "Spinoza died in the Hague", and "Grey is grey", for example, qualify as statements. In the first, we have "Spinoza" as the subject, and "died in the Hague" as the predicate. Note how for a sentence to qualify as a statement, it's predicate does not need to contain an object (consider the sentence $$\lqt X\text{ is.}\rqt$$) Statements are said to be *true* if and only if "the *concept-predicate* is contained in the *concept-subject*" (Leiniz's Concept-Containment Theory of Truth).
\begin{equation}
    \mathcal S + \phi\text{ is true} \iff \phi\in\mathcal C(\mathcal S)
\end{equation}
Where here we use $$\mathcal C(\mathcal S)$$ to denote the *concept-subject*, or *the concept of $$\mathcal S$$*. Trivial examples of concept-containment are tautological statements such as
\begin{equation}
    \lqt X\text{ is }X\rqt
\end{equation}
Identity statements like this are very clearly true, and the concept-containment is evident as well, since it follows from the Law of Identity that the concept of $$X$$ is contained in $$X$$, in other words, tautological statement are such that the subject-concept and the predicate-concept are the same. These types of statements are called *Primary Truths*.

Let us now consider for a moment the following statement:
\begin{equation}
    \lqt\text{Washington crossed the Delaware}\rqt
\end{equation}
Unlike the identity statement we saw above, here the subject-concept is *not* the same as the predicate-concept, and most importantly there is no clear containment of the latter into the former, which is why we call it a *Secondary Truth*. One can, for example, very easily imagine Washington *not* having crossed the Delaware, while on the other hand attempting to imagine $$\lqt X\text{ is not }X\rqt$$ is fruitless at best (and maddening at worst). In a sense, it seems that while all primary truths are "self sufficient", and depend on no external factors to be true, the same is not the case for secondary truths, they seem to depend on large class of externalites. For Washing to have crossed the Delaware, for example, a number of dependencies must have been satisfied, namely, Washington must exist, and so must the Delaware, and the Earth on which they act and so on. It seems to us that the statement could very well be false, without any dooming consequences, since the containment isn't obvious. The solution to this problem lies in the fact that all truths are what we call *analytic*, meaning they can be reduced to primary truths 