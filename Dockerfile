# BUILD STAGE
# use python 3.10 alpine as builder stage base image
FROM python:3.10-alpine AS builder

COPY requirements.txt .

# install all dependencies
RUN pip3 install --user -r requirements.txt


# FINAL STAGE
# use python 3.10 alpine as base image
FROM python:3.10-alpine

# create new user
RUN adduser -D nonroot

# set container working/context directory
WORKDIR /usr/src/app

# copy only the dependencies from last stage and app source code from src to container working directory
# extra step to change ownership of the directory to nonroot user
COPY --from=builder --chown=nonroot:nonroot /root/.local /home/nonroot/.local
COPY --chown=nonroot:nonroot ./src/app.py .

# update PATH environment
ENV PATH=/home/nonroot/.local:$PATH

# expose port 80
EXPOSE 80

# change user to nonroot
USER nonroot

# run the application
CMD ["python3", "app.py"]
