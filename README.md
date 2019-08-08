# Octave

Lightweight development environment for testing Octave scripts.

## Usage
Build the image
```
$ docker build -t octave .
```

Run
```
$ docker run --rm -it octave                   # Octave shell
$ docker run --rm -it --entrypoint bash octave # Bash shell
$ docker run --rm octave -h                    # Get octave help
$ docker run --rm -v $(pwd):/source octave /source/myfile.m
```

Mount your local source folder to the container and run it inside the container.
