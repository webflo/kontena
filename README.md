# Kontena

> Application Containers for Masses

Kontena is an open source container orchestration tool that makes it easy to deploy and manage containerized applications on your own servers.

The design and architecture of Kontena software is built to provide support for various application container technologies. At the moment, only [Docker](https://github.com/docker/docker) is supported but expect to see support for technologies like [CoreOS Rocket](https://github.com/coreos/rocket) and more in the future.

- [Website](http://www.kontena.io)
- [Blog](http://blog.kontena.io)
- [Docs](docs/)

## Concepts

Kontena works with the following concepts:

- **User** is a devops person that interacts with Kontena. User can have access to multiple grids.
- **Grid** is a cluster of host nodes.
- **Node** is a single server that belongs to grid.
- **Service** is a template used to deploy one or more containers.

## Components

Kontena consists of following components:

- [Server](server/)
- [Agent](agent)
- [CLI](../kontena-cli/)


## License

Kontena software is open source, and you can use it for any purpose, personal or commercial. Kontena is licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE) for full license text.