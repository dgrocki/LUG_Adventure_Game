# Dockerfile calls script that curls from the web server
# also calls date and sleep
FROM alpine:latest
MAINTAINER Daniel Grocki <grockid@oregonstate.edu>

RUN apk -U add bash
RUN apk -U add git

SHELL ["/bin/bash", "-c"]

# Copy the files into container
COPY start /
COPY intro.txt /
COPY unlock /bin/unlock
COPY room1 /room1
COPY .bashrc /.bashrc
COPY tutorial1.txt /tutorial1.txt

RUN chmod 755 /tutorial1.txt
RUN chmod 755 /room1
RUN chmod 755 /.bashrc
RUN chmod 755 /start
RUN chmod 755 /bin/unlock

# Run this command by default
#ENTRYPOINT /bin/bash && source cd /home 

CMD bash 
