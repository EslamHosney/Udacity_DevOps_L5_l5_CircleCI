# Test Git

FROM python:3.7.3-stretch

# working directory
WORKDIR /app

#copy source code to working directory

COPY . app.py /app/

# install packages

#RUN pip install --upgrade pip &&\
RUN    pip install --trusted-host pypi.python.org -r requirements.txt