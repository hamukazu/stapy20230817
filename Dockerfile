FROM blang/latex:ubuntu

RUN apt update -y
RUN apt install -y tzdata

RUN mkdir /work
RUN mkdir /work/build
COPY stapy20230817.tex /work
COPY build.sh /work

WORKDIR /work

CMD sh ./build.sh
