language: go
go: 1.4.1
install: go get -t -v ./...
before_install:
 - sudo apt-get update -qq
 - sudo apt-get install -qq librdf0-dev; dpkg -P librdf0-dev librasqal3-dev libraptor2-dev
 - cat /etc/debian_version
