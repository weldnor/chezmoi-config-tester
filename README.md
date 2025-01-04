# Chezmoi Config Tester

Chezmoi Config Tester is a lightweight Docker-based tool for testing your [chezmoi](https://www.chezmoi.io) configuration files in a controlled environment. This tool ensures your dotfiles work as expected without affecting your local setup.

## Prerequisites

- [Docker](https://www.docker.com/) installed on your machine.

## Getting Started

1. Clone the repository or save the provided files (`Dockerfile` and `tests.sh`) to your project directory.

2. Ensure your chezmoi configurations are located in `~/.local/share/chezmoi`.

3. Run the test script:

   ```bash
   ./test.sh
   ```

   This will:
   - Build a Docker image named `chezmoi-test`.
   - Start a container with your chezmoi configurations mounted to `/root/.local/share/chezmoi`.
   - Apply the configurations in the container and drop you into a shell for further testing.

## Cleaning Up

To remove the Docker image and containers:

```bash
# Remove all containers using the image
docker rm $(docker ps -aq -f ancestor=chezmoi-test)
# Remove the image
docker rmi chezmoi-test
```

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve this tool.
