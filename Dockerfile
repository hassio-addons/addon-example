FROM python

RUN apt update -y
RUN apt upgrade -y

#The timezone specified here just bypasses some required configuration, it does not appear to be configuring a persistent setting.
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt install -y sudo cron net-tools nano

EXPOSE 22
EXPOSE 443
EXPOSE 8000

RUN git clone https://github.com/jgyates/genmon.git /opt/genmon
RUN chmod 775 /opt/genmon/startgenmon.sh
RUN chmod 775 /opt/genmon/genmonmaint.sh
RUN /bin/bash /opt/genmon/genmonmaint.sh -i -n
RUN /opt/genmon/startgenmon.sh start
RUN sed -i 's/use_serial_tcp = False/use_serial_tcp = True/g' /etc/genmon/genmon.conf

CMD /opt/genmon/startgenmon.sh start && tail -F /var/log/genmon.log