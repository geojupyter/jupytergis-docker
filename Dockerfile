FROM ghcr.io/mamba-org/micromamba
# TODO: Add JupyterGIS to pangeo docker image! Everyone uses that for hubs, so
#       this would give e.g. Berkeley classrooms access to JupyterGIS!

RUN micromamba install \
  --channel conda-forge \
  --yes \
  jupytergis

ARG MAMBA_DOCKERFILE_ACTIVATE=1
RUN python -c "import jupytergis_lab"


CMD ["jupyter", "lab", "--ip", "0.0.0.0"]
