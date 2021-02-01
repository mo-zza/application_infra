FROM ubuntu:20.04

# Server init
RUN apt update && apt -y upgrade && apt install -y python3 && apt install -y python3-pip && apt install -y git && apt install -y net-tools

COPY ./ZOLBO_BACKEND ./API

RUN pip3 install -r ./API/requirements.txt

ENTRYPOINT [ "python3" ]
CMD [ "./API/zolbo.py" ]