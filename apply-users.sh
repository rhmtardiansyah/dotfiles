#!/bin/sh

pushd ~/.dotfiles
home-manager switch -f ./users/maaat/home.nix
popd
