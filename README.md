# HEALS Notebook

A jupyter notebook demonstrating HEALS KBQA workflow.

## Requirements

At least 8GB of RAM recommended.

### Software

* <a target="_blank" href="https://git-scm.com/book/en/v2/Getting-Started-Installing-Git">Git</a>
* <a target="_blank" href="https://docs.docker.com/get-docker/">Docker</a>
* (Only necessary on Linux) <a target="_blank" href="https://docs.docker.com/compose/install/">Docker Compose</a>

### (Mac and Windows) Docker Desktop Settings

If you are running Docker Desktop on Mac or Windows, you will need to adjust container memory limits to be able to run KBQA.
The default memory limit per container is typically 2GB while we recommend a limit of at least 6GB.

Use the Resources menu in Docker Desktop settings to ensure memory limit is more than 6GB.
Refer to the appropriate user manual for detailed instructions:

* <a target="_blank" href="https://docs.docker.com/desktop/mac/">Mac</a>
* <a target="_blank" href="https://docs.docker.com/desktop/windows/">Windows</a>

## Clone Project Submodules

This project uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) which are not fully downloaded with `git clone`.

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

This will pull all necessary container images, perform build steps, and start all project containers.

The initial build/startup process can take some time depending on your machine specs and internet connection.
Expect up to 5-10 minutes.
Startup should be complete when you see the following log from the kbqa container:

``` txt
heals-notebook-kbqa-service-1           | running "unix_signal:15 gracefully_kill_them_all" (master-start)...
```

The notebooks will be accessible on <http://localhost:8789>.

The specific port used for notebooks can be set in `docker-compose.yml`.

## Development

If you are pulling new code, make sure to use the `--recurse-submodules` flag.

``` sh
git pull --recurse-submodules
```

To rebuild all containers:

``` sh
docker-compose build
```

or to rebuild and restart in one step:

``` sh
docker-compose up --build
```

### Notebooks

Notebooks are managed in git as R-Markdown files, with each `.ipynb` file having a corresponding `.Rmd` file.
`.ipynb` files are gitignored and cannot be committed to the repo.
Commit the `.Rmd` files instead.
Changes are automatically synced between the two formats using the jupytext extension in JupyterLab.
