# dockerfiles

`docker image build -t testimage:latest .`

`docker run --detach=true -p 8080:8080 -p 9022:9022 --name=testalpine testimage:latest`