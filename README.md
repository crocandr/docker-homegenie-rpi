# HomeGenie for Raspberry PI

## Infos

  - http://www.homegenie.it/
  - https://genielabs.github.io/HomeGenie/#/get_started

## Build 

```
docker build -t croc/homegenie .
```

## Run

```
docker run -tid --name homegenie -p 9080:80 croc/homegenie
```

## Usage

The HomeGenie Web available on: http://<your server IP>:9080

I haven't known yet how to use right. Please check the documentation on the official site.

## Config

I haven't known yet where is the HomeGenie's config, but I think the `/usr/local/bin/homegenie/HomeGenie.exe.mdb` file is important in the container. It looks like a database or config store file.
Use the `docker cp homegenie:/usr/local/bin/homegenie /mybackup` command (or something similar) for backups.

