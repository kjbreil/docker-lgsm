NS = kjbreil

REPO = lgsm

.PHONY: build no-cache

default: build

build:
	docker build -t $(NS)/$(REPO) .

no-cache:
	docker build -t $(NS)/$(REPO) .

shell:
	docker run --rm --name lgsm-test -it $(NS)/$(REPO) /bin/bash

run:
	docker run --rm --name lgsm-test $(NS)/$(REPO)

push:
	docker push $(NS)/$(REPO)

clean:
	docker system prune -a