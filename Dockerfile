# Define what image docker will use.
FROM python:3.7-alpine

# Define main docker app working directory.
WORKDIR /code

# Copy python app dependencies file to working
# directory.
COPY requirements.txt requirements.txt

# Define docker application env vars.
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Ask to docker run commands to install dependencies
# and packages to prepare application to run.
#RUN apk add --no-cache gcc musl-dev linux-headers

# Run pip install to install python app dependencies.
RUN pip install -r requirements.txt

# Expose the PORT 8080 of application that is
# running
EXPOSE 5000

# Copy all files in the folder to docker app directory,
# ignoring all that are listed in .dockerignore.
COPY . .

# Run command to start application in docker instance.
CMD ["flask", "run"]