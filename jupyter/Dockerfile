# Start from a core stack version
FROM jupyter/base-notebook
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget git \
                       nano \
                       -o APT::Install-Suggests=0 \
                       -o APT::Install-Recommends=0

RUN conda update -y -n base conda
RUN pip install git+https://github.com/epifanio/webob
RUN pip install git+https://github.com/epifanio/pydap

RUN conda install xarray -y -c conda-forge
RUN conda install holoviews -y -c conda-forge
RUN conda install hvplot -y -c conda-forge
RUN conda install pandas -y -c conda-forge
RUN conda install geopandas -y -c conda-forge
RUN pip install json2html

RUN pip install git+https://github.com/grantjenks/python-sortedcontainers
RUN pip install xmltodict
RUN pip install sickle
RUN pip install tqdm
RUN pip install parmap
RUN pip install cython
RUN pip install h5netcdf

RUN pip install owslib
RUN pip install pycsw

RUN jupyter labextension install @jupyterlab/toc

USER jovyan