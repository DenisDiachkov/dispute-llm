FROM ubuntu:22.04

WORKDIR /code
COPY . /code
COPY config /code/config

RUN apt-get update && \
    apt-get install build-essential && \
    python -m pip install --upgrade pip && \
    python -m pip install -e . && \ 
RUN huggingface-cli download unsloth/Llama-3.2-11B-Vision-Instruct

ENTRYPOINT  python -m AGISwarm.llm_instruct_ms --config-name config/config.yaml