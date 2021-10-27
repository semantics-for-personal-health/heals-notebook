# HEALS Notebook

A jupyter notebook demonstrating HEALS KBQA workflow.

## Requirements

* <a target="_blank" href="https://docs.docker.com/get-docker/">Docker</a>
* (Only necessary on Linux) <a target="_blank" href="https://docs.docker.com/compose/install/">Docker Compose</a>

## Clone Project Submodules

This project uses git submodules which are not fully downloaded with `git clone`.

Be sure that you are using an [ssh key linked to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

When you clone this repo:

```sh
git clone --recurse-submodules git@github.com:semantics-for-personal-health/heals-notebook.git
```

Alternatively, if you already cloned this repo without `--recurse-submodules`,  you can pull the submodules separately:

```sh
git submodule update --init --recursive
```

## Build and Run

In a terminal, navigate to the cloned project directory and run the following:

```sh
docker-compose up
```

The notebooks will be accessible on <http://localhost:8888>
