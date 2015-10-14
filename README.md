# Overview 

[Plplot](http://plplot.sourceforge.net/) 5.10.0 library ocaml bindings.
Plplot library contains ocaml bindings. It can be installed with operating
system package manager.

e.g. in Ubuntu it can be installed with command:
```bash
$ apt-get install libplplot-ocaml
```

But when you use opam and switches between different compiler version, you are
caused to build and install plplot from sources.

Current project offers other solution: 
 * install plplot library from your operating system package manager
 * build and install ocaml bindings from source with opam
  

# Installation

Install plplot library from your package manager
```bash
$ apt-get install libplplot-dev

```

Build and install bindings with opam:
```bash
$ oasis setup
$ ./configure
$ make
$ make install
```




