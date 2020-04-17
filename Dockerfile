# Docker File for Cleaning Folders
FROM alpine:3.9.5

ENV DAYS=30
ENV FOLDER="."

RUN apk update

COPY folderclean.sh .

ENTRYPOINT [ "/bin/sh" ]
CMD [ "./folderclean.sh" ]
