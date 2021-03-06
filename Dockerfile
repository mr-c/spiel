FROM kernsuite/base:3

# we need to set this for casa to work properly inside docker
ENV USER root

RUN docker-apt-install \
    python-future \
    python-yaml \
    python-pyfits \
    python-pip \
    make \
    galsim \
    simms \
    meqtrees \
    wsclean \
    casalite

RUN pip --no-cache-dir install cwlref-runner html5lib "toil[cwl]"

RUN docker-apt-install python-astropy
