# What

An incredibly simplistic set up for mongrel2

# How

Have your app container link this container and talk to it on port 9999 and 9998.
For the docker host, forward port 80 to 8080 on the container to connect it to
the outside world.

At this time, there's just the one mongrel2 server called main, and it's config
is loaded and started with a very stupid script that is the ENTRYPOINT and
takes the server name as an argument, which is supplied by CMD.

All this to say, if you just want a mongrel container to play with, do this:

```bash
docker pull wamilton/docker-mongrel2
docker run -p 80:8080 -d -name mongrel2 wamilton/docker-mongrel2
```
