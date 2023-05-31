# TensorFlow Training Submission Template
This is a template for submitting TensorFlow jobs.

0. Make sure that Docker and the NVIDIA Container Toolkit are installed on your system.  If not, follow the instructions in `installer/README.md`
1. Put code into `src/` and name the starting point `index.py`
2. Set the code to download training and testing data into `/tf/data/`
3. (Optional) Set the log directory for TensorBoard to `/tf/logs/`
4. Determine dependencies
- This template currently uses TensorFlow 2.12.0 to change this, update the `FROM` line in `Dockerfile` to your desired image from [Docker Hub](https://hub.docker.com/r/tensorflow/tensorflow/tags)
- Add any pip dependencies to `requirements.txt`
5. Select GPUs by id:  update `device_ids` in `docker-compose.yaml`
6. Run the training job.  Logs are sent to `./logs/`
```
docker compose up --build && docker compose down
```

For additional questions email nicholas.jacobs@maine.edu.
