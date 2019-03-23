from ubuntu:latest

RUN apt update && apt install -y\
    python3.6\
    python3.6-dev\
    python3-pip\
    python3-venv\
    netcat

RUN python3.6 -m venv /opt/venv
ENV PATH=/opt/venv/bin:$PATH
RUN python -m pip install ptvsd

WORKDIR /opt/sources
ENTRYPOINT ["/opt/sources/entrypoint.sh"]
CMD [""]
