# Infer Dockerfile

## 1. pre-requisite

* 100 GB disk space ("/") to store intermediate compile product;
* 50 GB disk space ("/") to store libs;
* the latest version of [infer](https://github.com/facebook/infer) cloned in $HOME.

## 2. after run.sh

* opam & ocaml 4.14.0 installed;
* infer not compiled, need to execute "./build-infer.sh \<target\>", and this may cost a lot of time (e.g. clang: 30 min first time; 5 min later).

