FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /home

## Step 2:
# Copy source code to working directory
COPY . /home
#COPY ./requirements.txt /app

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN  pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 8000

## Step 5:
# Run app.py at container launch
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
