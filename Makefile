TAG=depbug:snapshot
SVC=depbug
BUILDER=depbug

RUN=docker run --rm \
	-e PROJECT_ROOT=$(SVC) \
	-v $(CURDIR):/go/src/$(SVC) \
	-w /go/src/$(SVC) \
	-v /var/run/docker.sock:/var/run/docker.sock \

build:
	docker build -f Dockerfile.build -t $(BUILDER) .
	$(RUN) $(BUILDER) dep ensure -v
