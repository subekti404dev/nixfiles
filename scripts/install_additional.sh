#!/bin/sh

 nix-env -iA nixpkgs.jdk11 &&\
    nix-env -iA nixpkgs.flutter
