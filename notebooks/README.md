# Notebooks

Notebooks are managed in git as R-Markdown files, with each `.ipynb` file having a corresponding `.Rmd` file.
`.ipynb` files are gitignored and cannot be committed to the repo.
Commit the `.Rmd` files instead.
Changes are automatically synced between the two formats using the jupytext extension in JupyterLab.
