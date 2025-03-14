FROM ghcr.io/mamba-org/micromamba
# TODO: Add JupyterGIS to pangeo docker image! Everyone uses that for hubs, so
#       this would give e.g. Berkeley classrooms access to JupyterGIS!

# User is `mambauser`

ARG VERSION

RUN micromamba install \
  --channel conda-forge \
  --yes \
  "jupytergis==${VERSION}" \
  "jupyterhub==4.*" \
  notebook

CMD ["jupyter", "lab", "--ip", "0.0.0.0"]
