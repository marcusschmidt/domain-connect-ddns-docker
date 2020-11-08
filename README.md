# domain-connect-ddns-docker
Use [DomainConnectDDNS-Python](https://github.com/Domain-Connect/DomainConnectDDNS-Python) in a docker container, which executes the update command every 15 minutes. I do not know which providers are supported by this tool. I use it for [IONOS](https://www.ionos.com).

## Usage
### Build image
    docker build --pull --rm -f "Dockerfile" -t domain-connect-ddns:latest "."

### Run container
    docker run --name domain-connect-ddns -d ionosdns:latest

### Setup domains 
    docker exec -it domain-connect-ddns domain-connect-dyndns setup --domain <YOUR_DOMAIN>
Do this for each domain you want to set up.

### First update
    docker exec -it domain-connect-ddns domain-connect-dyndns update --all
Test the settings by starting the update manually once