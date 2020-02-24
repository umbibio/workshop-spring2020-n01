FROM python:3.6


RUN apt-get update && apt-get install -y \
        python-opengl \
        xvfb \ 
        ffmpeg


RUN pip install --no-cache-dir \
        keras-rl \
        gym[atari,classic_control] \
        matplotlib \
        jupyterlab


WORKDIR /data


ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -s '-screen 0 640x480x24' $@", ""]


CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
