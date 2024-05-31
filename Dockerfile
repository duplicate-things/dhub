FROM dawn001/z_mirror:hr_latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

ENV TZ=Asia/Dhaka

RUN apt-get update && apt-get upgrade -y
RUN apt-get -qq install mediainfo -y
RUN pip3 uninstall pyrofork -y

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
