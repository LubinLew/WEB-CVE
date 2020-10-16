################################################################################
REPO=weblogic
TAGS=10.3.6
USER=lubinlew

################################################################################
TARGET=${USER}/${REPO}:${TAGS}
all:build

################################################################################

build:
	docker build -t ${TARGET} . 

push:
	docker push ${TARGET}

run:
	docker run -p 7001:7001 --name ${REPO}-${TAGS} -d ${TARGET}

stop:
	docker stop ${REPO}-${TAGS}

delete:
	docker rm ${REPO}-${TAGS}

################################################################################
