# Base image
FROM tensorflow/tensorflow:2.12.0-gpu

# Installs pip requirements
COPY ./requirements.txt /tf/requirements.txt
RUN pip install --no-input -r /tf/requirements.txt
RUN rm /tf/requirements.txt

# Copy startup files
COPY ./installer/test_tf.py /tf/test_tf.py
COPY ./installer/start.sh /tf/start.sh
