#check on http://ec2-3-233-239-75.compute-1.amazonaws.com:8089/
from locust import HttpUser, TaskSet, between

def index(l):
    l.client.get("/")

class UserBehavior(TaskSet):
    tasks = {index: 1}

class WebsiteUser(HttpUser):
    tasks = [UserBehavior]
    wait_time = between(5.0, 9.0)