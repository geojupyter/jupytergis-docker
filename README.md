# JupyterGIS Docker image

```bash
docker run -p 8888:8888 ghcr.io/geojupyter/jupytergis
```


## Local build

```
docker compose build
```


## New version

Update `.env` with the new version number.

Create a new release in GitHub.
The tag _must_ exactly match the value of `$VERSION` in `.env`.
Use "Generate release notes" to title the release.
