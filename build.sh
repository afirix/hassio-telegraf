set -ev
docker run --rm --privileged \
        -v ~/.docker:/root/.docker \
	-v "$(pwd)":/data \
	homeassistant/amd64-builder \
	-t telegraf \
	--all \
	--image "sabuto/{arch}-hassio-telegraf"
