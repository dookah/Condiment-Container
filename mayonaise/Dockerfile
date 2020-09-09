#Python docker container as the base image
FROM python:3.7

#On build, the app will be copied into an app folder
COPY . /app
#Commands that follow will be executed inside /app
WORKDIR /app

#Install required packages
RUN pip install -r requirements.txt

#Listen on port 5000
EXPOSE 5000

#Run the server
CMD ["python3", "main.py"]