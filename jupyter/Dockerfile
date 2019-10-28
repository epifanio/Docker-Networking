# Start from a core stack version
FROM jupyter/base-notebook
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget git \
                       nano \
                       -o APT::Install-Suggests=0 \
                       -o APT::Install-Recommends=0

RUN pip install git+https://github.com/epifanio/webob
RUN pip install git+https://github.com/epifanio/pydap

USER jovyan