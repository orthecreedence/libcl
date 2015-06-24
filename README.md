# LibCL

The goal of this library is to namespace the common-lisp package into a set of
smaller, more digestable packages (such as `cl.core`, `cl.math` or `cl.clos`).

The immediate goal is to clean up the common lisp global namespace, so instead

```lisp
(defpackage :my-app
  (:use :cl))
```

you would do

```lisp
(defpackage :my-app
  (:use :cl.core :cl.math :cl.bindings))
```

The eventual goal is such that Common Lisp's core is housed in the `cl.core`
package, and all other functionality is implemented in separate packages. These
separate packages would implement all their functionality in Common Lisp
(following the spec, of course).

If successful, this will become CL's standard library. Implementation maintainers
will only have to build what's needed to run the core package, and the rest is
already built.

## Why??

As far as splitting out symbols into separate packages, it breaks the language
into separate, digestable pieces that are easier to learn. It also allows people
to only import into their software exactly what they need, which eventually
might allow smaller images and/or memory footprints.


As far as re-implementing CL as a separate library, my hypothesis is that a
this will make it easier to build and maintain implementations. It may
eventually allow the language to evolve beyond the spec (gasp).

## Early stages

It's worth mentioning that this is an *idea* right now. It might change the CL
landscape significantly, but it also may be something that nobody really cares
about at all. It's currently in the feedback stages of alpha development.

## Who's doing this?

Anyone who programs in common lisp! Your input/code is welcome (as long as you
agree with the license).

## License

Public domain.

