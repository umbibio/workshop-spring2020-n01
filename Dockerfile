FROM python:3.6


RUN apt-get update && apt-get install -y \
        python-opengl \
        xvfb \ 
        ffmpeg


RUN pip install --no-cache-dir \
        tensorflow \
        keras-rl \
        gym[atari,classic_control] \
        jupyterlab \
        matplotlib


RUN python -m venv /root/tf1env \
        && . /root/tf1env/bin/activate \
        && pip install --no-cache-dir \
                tensorflow==1.13.1 \
                keras-rl \
                gym[classic_control] \
                ipykernel \
                matplotlib \
        && python -m ipykernel install --name tf1 --display-name "Python (tf1)"


WORKDIR /data


ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -s '-screen 0 640x480x24' $@", ""]


CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

