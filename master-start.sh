#!/bin/bash -ex
docker start jenkins-master-1 ||
	docker run --name jenkins-master-1 -d -p 8080:8080 -p 50000:50000 -v /var/jenkins/master-1:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins:lts

