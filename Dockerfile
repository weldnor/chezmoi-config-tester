# Use a lightweight base image
FROM ubuntu:24.04

# Install required dependencies
RUN apt-get update && apt-get install -y git sudo curl

# Install chezmoi
RUN curl -sfL https://git.io/chezmoi | sh

# Set chezmoi's home directory
ENV HOME=/root
WORKDIR /root

# Entrypoint for testing
CMD chezmoi apply && sh