CTN=`which podman >/dev/null 2>&1 && echo podman || echo docker`
IMAGENAME="vpn"
VERSION="client1"

all:
	$(CTN) build -t $(IMAGENAME):$(VERSION) .

run:
	$(CTN) run -d --cap-add=NET_ADMIN --device /dev/net/tun $(IMAGENAME):$(VERSION)