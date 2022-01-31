FROM jupyter/scipy-notebook:2021-10-11
USER ${NB_UID}
RUN pip install 'jupytext'
COPY ./entrypoint.sh /bin/
