# do-codeserver - Run Code Server using the [do-framework](https://bit.ly/do-framework)

This project simplifies running of Code Server in a container either locally using Docker or on a Kubernetes cluster.

# Configuration

Run the `./config.sh` script to open the project's configuration file.
The `PASSWORD` setting allows you to set a password for your Code Server instance

# Build

Run the `./build.sh` script to build the container image.

This container image is pre-built and shared via DockerHub at iankoulski/do-jupyterlab. To simply run Code Server without building the container image, please use the following command:

```sh
docker run -it --rm -v $(pwd):/wd -p 8080:8080 -e PASSWORD=C0d3S3rv3r iankoulski/do-codeserver
```

To run Code Server  on Kubernetes using the pre-built container image, please use the following command:

```sh
kubectl apply -f https://bit.ly/do-codeserver-yaml
```

# Share

If you want to share the container with others or run it on a Kubernetes cluster, run the `./push.sh` script. This will push the container image to your configured registry.

# Run

Execute the `./run.sh` script to run Code Server locally using Docker.
If you would like to run the Code Server instance on Kubernetes, change the `TO` setting in the project configuration from `docker` to `kubernetes` first, then execute the `./run.sh` script.

# Project description

This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.


The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `expose.sh` - expose a Code Server running on Kubernetes locally via port-forwarding
* `hide.sh` - stop port-forwarding
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container

# License

This project is released under the MIT [LICENSE](LICENSE).

