#!/bin/bash
# This script is invoked from my Travis-CI commands
# It bootstraps to grab the 'neil' tool and run 'neil test'
set -e # exit on errors
set -x # echo each line

ls /opt/cabal
ls /opt/ghc
echo $HOME/.cabal/bin:/opt/ghc/$(ls /opt/ghc)/bin:/opt/cabal/$(ls /opt/cabal)/bin:$PATH
export "PATH=$HOME/.cabal/bin:/opt/ghc/$(ls /opt/ghc/*.*)/bin:/opt/cabal/$(ls /opt/cabal)/bin:$PATH"

cabal update && cabal install
