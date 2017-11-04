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

RUN conda install bowtie2 samtools

WORKDIR /home/biodocker

COPY MELT.jar .

COPY MELT bin

WORKDIR /data

CMD ["MELT", "Single"]
