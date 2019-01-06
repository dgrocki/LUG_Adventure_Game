# Dockerfile calls script that curls from the web server
# also calls date and sleep
FROM alpine:latest
MAINTAINER Daniel Grocki <grockid@oregonstate.edu>

RUN apk -U add bash
RUN apk -U add git
RUN apk add openrc

SHELL ["/bin/bash", "-c"]

# Copy the files into container
COPY init /
COPY intro.txt /
COPY unlock /bin/unlock
COPY room1 /room1
COPY empty /empty

RUN chmod 755 /room1
RUN chmod 755 /empty
RUN chmod 755 /init
RUN chmod 755 /bin/unlock

# Run this command by default
#ENTRYPOINT /init && /bin/bash && cd /home 
CMD /init 
