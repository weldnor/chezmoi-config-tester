#!/bin/bash

docker build -t chezmoi-test .
docker run -it -v ~/.local/share/chezmoi:/root/.local/share/chezmoi chezmoi-test