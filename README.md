# routinator-docker

This is the Docker version of the [Routinator 3000](https://github.com/NLnetLabs/routinator), a RPKI validator.

## Build it

Note: there is an automatically built version on [Docker Hub](https://hub.docker.com/r/lspgn/routinator-docker) so you do not have to build it manually.

```
docker build -t lspgn/routinator .
```

## Run it

You will have to download the ARIN TAL [here](https://www.arin.net/resources/rpki/tal.html) and put it in the local directory.
Then

```
docker-compose up
```
or
```
docker run -p 3323:3323 -v $PWD/arin-rfc7730.tal:/root/.rpki-cache/tals/arin.tal lspgn/routinator
```
