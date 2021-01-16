# nebula-docker
Docker image + compose file for nebula mesh

## Getting started

Create a .env file with the following contents:

```
# only if we're not a lighthouse
LIGHTHOUSE_VPN_IP=192.168.1.1
LIGHTHOUSE_PUBLIC_ADDR=lighthouse.example.net
LIGHTHOUSE_PUBLIC_PORT=4242

# set to true or false
AM_LIGHTHOUSE=false

LISTEN_HOST=0.0.0.0
LISTEN_PORT=4242
TUN_DEVICE=nebula1

# where our certs are
CA_CERT=./certs/ca.crt
NODE_CERT=./certs/scooter.crt
NODE_KEY=./certs/scooter.key
```

Run the daemon with `docker-comose up -d`.

Note that the container uses host-mode networking due to the TUN interface requirements.
