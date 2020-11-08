FROM python:alpine

WORKDIR /usr/src/app

# install dependencies for domain-connect-dyndns
RUN apk add -U --no-cache gcc build-base linux-headers ca-certificates python3 python3-dev libffi-dev libressl-dev

RUN pip install domain-connect-dyndns

COPY update.sh /etc/periodic/15min/update

CMD [ "crond", "-l", "2", "-f" ]