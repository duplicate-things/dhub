FROM dawn001/z_mirror:hr_latest

ENV TZ=Asia/Dhaka

RUN apt-get update && apt-get upgrade -y
RUN apt-get -qq install mediainfo -y
RUN pip3 uninstall pyrofork -y
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages
