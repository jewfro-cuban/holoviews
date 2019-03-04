#!/usr/bin/env bash

# rename conda package so that pip installed package will shadow it
# get env prefix
ENV_PREFIX=$(conda info --json | jq -r ".default_prefix")
mv $ENV_PREFIX/lib/python3.7/site-packages/holoviews $ENV_PREFIX/lib/python3.7/site-packages/holoviews_
pip install -e .
# jupyter labextension install @pyviz/jupyterlab_holoviews
