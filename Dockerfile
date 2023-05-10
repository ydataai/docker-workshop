# use python 3.10 alpine as base image
FROM python:3.10-alpine

# set container working/context directory
WORKDIR /app

# copy requirements from src to container working directory
COPY requirements.txt /app

# install all dependencies
RUN pip3 install -r requirements.txt

# copy app source code from src to container working directory
COPY ./src/app.py /app

# expose port 80
EXPOSE 80

# run the application
CMD ["python3", "app.py"]
