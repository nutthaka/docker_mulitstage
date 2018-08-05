FROM alpine as base
COPY . /newfolder

FROM base AS test
WORKDIR newfolder
RUN cp testfile.txt testfile2.txt

FROM base
CMD ls -al newfolder
