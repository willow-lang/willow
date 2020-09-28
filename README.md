# Willow

[Willow][1] is a lisp that is built upon Antlr4 and Java. It aims to be easy to use,
expressive, extensible and modular.

* *Full Java compatibility* - You can use any function or library from Java. __probably available at v.0.03__
* *Zero overhead* - Compiled code should be just as or more efficient than hand-written Java.
* *Hygienic macros* - Language extended intern features with no runtime dependencies
* *Embeddable* - Willow is explicitly designed to be simple and clean. This allows it to be ported into other programs to support runtime extensibility and interactive development.

## Documentation

* The [setup](setup.md) guide is a great place to start
* The [tutorial](tutorial.md) teaches the basics of the language
* The [reference](reference.md) describes all Willow special forms
* The [API listing](api.md) shows how to integrate Willow into your codebase
* The [Antlr primer](antlr-primer.md) gives a very brief intro to Antlr4 with
  pointers to further details
* The [test suite](test/) has basic usage examples for most features.

For a small complete example that uses the Java.swing, see
[swing.wll][2].

The [changelog](changelog.md) has a list of user-visible changes for
each release.

## Example

#### Hello World
```
(print "hello, world!")
```

#### Fibonacci sequence
```
(define-module fib
     import (willow/math)
     export (willow/fibo))

(define-function fib
     (solve + 1 n (- 2 n)))
```

## Building Willow from source

Building Willow from source allows you to use versions of Willow that
haven't been released, and makes contributing to Willow easier.

### To build Willow from source

1. `cd` to a directory in which you want to download Willow, such as
   `./src`
2. Run `git clone https://github.com/willow-lang/willow`
3. Run `cd Willow`
4. Run `make willow` to create a standalone binary called `willow`
5. Copy or link the `willow` binary to a directory on your `PATH`, such as `/usr/local/bin`

**Note**: If you copied the `willow` binary to one of the
directories on your `PATH`, then you can run `willow filename.wll` to
run a Willow file anywhere on your system.

## License

Copyright © 2020 Timo Sarkar and contributors

Released under the [MIT license](LICENSE).


