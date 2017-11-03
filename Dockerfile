FROM biocontainers/biocontainers:latest

LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="MELT"
LABEL software.version="2.1.3"
LABEL description="the mobile element locator tool"
LABEL website="http://melt.igs.umaryland.edu/index.php"
LABEL documentation="http://melt.igs.umaryland.edu/manual.php"
LABEL license="http://melt.igs.umaryland.edu/downloads.php"
LABEL tags="Genomics"

MAINTAINER Wen-Wei Liao <wen-wei.liao@wustl.edu>

RUN conda install bowtie2

WORKDIR /home/biodocker

COPY MELTv2.1.3.tar.gz .

RUN tar zxf MELTv2.1.3.tar.gz

COPY MELT bin

WORKDIR /data

ENTRYPOINT ["MELT"]
CMD ["Single"]

