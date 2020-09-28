#! /bin/sh -x

dune build src/hello/hello.exe
dune build src/driver/driver.exe
dune build src/gen-triple/gen_triple.exe
