FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends ubuntu-desktop && \
    apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal openssh-server && \
    apt-get install -y tightvncserver && \
    mkdir /root/.vnc && \
    mkdir -p /var/run/sshd && \
    echo 'root:root' | chpasswd

ADD xstartup /root/.vnc/xstartup

EXPOSE 22 80 443 9001 9091 
CMD    ["/usr/sbin/sshd", "-D"]
