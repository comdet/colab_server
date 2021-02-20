FROM tensorflow/tensorflow:2.4.1-gpu-jupyter
#FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer "hirokiyokoyama <h-yokoyama@craft-server.co.jp>"
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Asia/Bangkok" apt-get install -y tzdata ffmpeg libsm6 wget git zip unzip nodejs npm python-tk protobuf-compiler build-essential gcc g++ cmake
RUN mkdir -p /content
RUN pip install --upgrade pip

RUN pip install tensorflow_datasets \
        scipy scikit-learn pillow opencv-python \
        google-colab tensorflow_addons

RUN pip install jupyter_http_over_ws \
    && jupyter serverextension enable --py jupyter_http_over_ws
RUN pip install --upgrade ipykernel
RUN pip uninstall -y enum34
RUN pip install gdown
RUN pip install keras flask
#RUN sed -i "s/auth_url = self/auth_url = 'http:\/\/localhost:8888\/' #/g" /usr/local/lib/python3.6/dist-packages/jupyter_http_over_ws/handlers.py
#RUN mkdir -p /root/.ipython/profile_default/startup
#RUN echo "import tensorflow as tf" > /root/.ipython/profile_default/startup/00-setram4gb.ipy
#RUN echo "gpus = tf.config.experimental.list_physical_devices('GPU')" >>  /root/.ipython/profile_default/startup/00-setram4gb.ipy
#RUN echo "tf.config.experimental.set_virtual_device_configuration(gpus[0],[tf.config.experimental.VirtualDeviceConfiguration(memory_limit=3584)])" >>  /root/.ipython/profile_default/startup/00-setram4gb.ipy 
WORKDIR /content
CMD [ "jupyter", "notebook", \
      "--NotebookApp.allow_origin='https://colab.research.google.com'", \
      "--NotebookApp.token=''", \
      "--NotebookApp.port=8888", \
      "--NotebookApp.disable_check_xsrf=True", \
      "--allow-root", \
      "--ip=0.0.0.0", \
      "--no-browser", \
      "--NotebookApp.port_retries=0" ]

