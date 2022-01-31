#!/bin/sh

jupytext --sync ${HOME}/**/*.Rmd

start-notebook.sh --NotebookApp.token='' --NotebookApp.password=''
