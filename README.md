# Minimal example

Minimal environment for running the tests in `pgaux.t`. 

All needed modules and macros reside in `/lib`. Please use either the docker image `eltenedor/perl-webwork` or build a suitable docker container from the provided `/docker/Dockerfile`. 

The environment that is used assumes that `${WEBWORK_ROOT} == ${PG_ROOT}`

## Docker command

```bash
docker run -it --rm --name minimal-test -v `pwd`:/opt/webwork/pg eltenedor/perl-webwork:latest
```

Then, from the shell of the Docker container run

```bash
perl pgaux.t
```

