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
{%katex display%}
    \mathcal S + \phi
{%endkatex%}
Where {%katex%}\mathcal S{%endkatex%} is a *subject* and {%katex%}\phi{%endkatex%} is a *predicate*. The sentences "Spinoza died in the Hague", and "Grey is grey", for example, qualify as statements. In the first, we have "Spinoza" as the subject, and "died in the Hague" as the predicate. Note how for a sentence to qualify as a statement, it's predicate does not need to contain an object (consider the sentence {%katex%}``X\text{ is.}"{%endkatex%}) Statements are said to be *true* if and only if "the *concept-predicate* is contained in the *concept-subject*" (Leiniz's Concept-Containment Theory of Truth).
{%katex display%}
    \mathcal S + \phi\text{ is true} \iff \phi\in\mathcal C(\mathcal S)
{%endkatex%}
Where here we use {%katex%}\mathcal C(\mathcal S){%endkatex%} to denote the *concept-subject*, or *the concept of {%katex%}\mathcal S{%endkatex%}*. Trivial examples of concept-containment are tautological statements such as
{%katex display%}
    ``X\text{ is }X"
{%endkatex%}
Statements like this are very clearly true, and the concept-containment is evident as well, since it follows from the Law of Identity that the concept of {%katex%}X{%endkatex%} is contained in {%katex%}X{%endkatex%}, in other words, tautological statement are such that the subject-concept and the predicate-concept are the same. These types of statements are called *Primary Truths*.

Let us now consider for a moment the following statement:
{%katex display%}
    ``\text{Washington crossed the Delaware}"
{%endkatex%}
Unlike the identity statement we saw above, here the subject-concept is *not* the same as the predicate-concept, and most importantly there is no clear containment of the latter into the former, which is why we call it a *Secondary Truth*. One can, for example, very easily imagine Washington *not* having crossed the Delaware, while on the other hand attempting to imagine {%katex%}``X\text{ is not }X"{%endkatex%} is fruitless at best (and maddening at worst). In a sense, it seems that while all primary truths are "self sufficient", and depend on no external factors to be true, the same is not the case for secondary truths, they seem to depend on large class of externalites. For Washing to have crossed the Delaware, for example, a number of dependencies must have been satisfied, namely, Washington must exist, and so must the Delaware, and the Earth on which they act, and so on. It seems to us that the statement could very well be false, without any dooming consequences, once again, it does not take a lot of mental gymnastics to imagine a universe where Washington simply did not cross the Delaware. The solution to this problem lies in the fact that all truths are what we call *analytic*, meaning they can be reduced to primary truths, which in turn are trivially true.

Let us begin by acknowledging Washington as being more than an individual, we are referring here to a *concept* of Washington. This concept, we must note, is not atomic, and can be divided into a set of elements that compose it, which is to say we have
{%katex display%}
    \mathcal C(\mathcal S) = \{\alpha_1, \alpha_2, \ldots, \alpha_n\}
{%endkatex%}
Denoting a concept-subject as being composed of {%katex%}n{%endkatex%} characteristics. We now note, however, that any such {%katex%}\mathcal C(\mathcal S){%endkatex%} is unique, that is to say that there can be no subject {%katex%}\mathcal S'{%endkatex%} such that {%katex%}\mathcal C(\mathcal S') = \{\alpha_1, \alpha_2, \ldots, \alpha_n\}{%endkatex%}, for were that to be the case, then it would follow that {%katex%}\mathcal C(\mathcal S) \subset \mathcal C(\mathcal S'){%endkatex%} and {%katex%}\mathcal C(\mathcal S') \subset \mathcal C(\mathcal S){%endkatex%}, which trivially implies {%katex%}\mathcal C(\mathcal S) = \mathcal C(\mathcal S') {%endkatex%}, and subsequently that {%katex%}\mathcal S = \mathcal S'{%endkatex%}. This is to say that every concept is uniquely defined by the union of its parts, and if two concepts are composed of exactly the same elements, then they are in fact the same concept. Applying this to our statement, we can say that there exists a concept of our subject, Washington, {%katex%}\mathcal C(W){%endkatex%}, composed of {%katex%}n{%endkatex%} {%katex%}\alpha{%endkatex%}-elements, one of which takes form {%katex%}\alpha_k = \text{``crossed the Delaware"}{%endkatex%}, with {%katex%}1 < k < n{%endkatex%}. This is to say that 
{%katex display%}
    \mathcal C(W) = \{\alpha_1, \alpha_2, \ldots, \alpha_k, \ldots, \alpha_n\}
{%endkatex%}
And also that, fundamentally, {%katex%}\text{``Washington is Washington"}{%endkatex%} if, and only if
{%katex display%}
    \mathcal C(W) = \bigcup_{i=1}^{n}\alpha_i
{%endkatex%}

Let us now suppose that Washington did *not* cross the Delaware. This would mean we now have a concept.