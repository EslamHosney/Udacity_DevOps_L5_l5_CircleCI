setup:
	python3 -m venv ~/.Udacity_DevOps_L5_l5_CircleCI

env:
	#Show information about environment
	which python3
	python3 --version
#	which pytest
#	which pylint
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	/bin/hadolint Dockerfile
	pylint --disable=R,C,W1203 *.py
	
test:
	# write test

run:
	python web.py
	

all: install run