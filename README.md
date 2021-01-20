# nebula-docker
Docker image + compose file for nebula mesh

## Getting started

Create a .env file with the following contents:

```
# separate by percent sign
STATIC_HOST_MAP=192.168.1.1,lighthouse.example.net:4242%192.168.1.2,host2.example.net

# list of VPN ips of lighthouse nodes
# these are used only on non-lighthouse nodes
# separate by percent sign
LIGHTHOUSE_HOSTS=192.168.1.1%192.168.1.7

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
