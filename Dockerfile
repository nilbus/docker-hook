FROM rlesouef/alpine-python-2.7
RUN pip install requests docker && apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache openssh
ADD docker-hook .
ENTRYPOINT ["./docker-hook"]
