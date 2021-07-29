# Minimal example

## Docker command

```bash
docker run -it --rm --name minimal-test -v `pwd`:/opt/webwork/pg eltenedor/perl-webwork:latest
```

Then, from the shell of the Docker container run

```bash
perl pgaux.t
```

