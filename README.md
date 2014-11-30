csp-solvers
===========
While employing a naive Ruby-based CSP solver for the [storybook](https://github.com/andrewhao/storybook) project, which attempts to perform a variant on a scheduling problem, I wondered whether I was using the wrong tool for the job.

This is a series of experiments comparing different languages for this job. I'll start with Ruby, then move onto Clojure, and then end at Prolog. The goals of this project are to learn how language design affects the way I think about the problem space, and to learn about the real-world application of CSPs.

Abstract
--------

A volunteer must, each week, assign a book bag to each student. Write a CSP solver to generate a book-bag assignment plan for that week, given the following constraints:

* All students must receive a book-bag.
* Each book-bag may only be assigned to one student at a time.
* A student may not be assigned a book-bag s/he has received before.

Sources
-------

* [Artificial Intelligence: A Modern Approach (3rd Edition)](http://www.amazon.com/Artificial-Intelligence-Modern-Approach-3rd/dp/0136042597/ref=sr_1_1?ie=UTF8&qid=1417214576&sr=8-1&keywords=9780136042594)
* http://aima.cs.berkeley.edu/2nd-ed/newchap05.pdf
* [Ruby Forum -- Using Amb](https://www.ruby-forum.com/topic/57768)
* [SchemeWiki: amb](http://community.schemewiki.org/?amb)
