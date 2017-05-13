# docker-ubuntu-desktop-vnc
默认开启ssh，用户和密码都是root
通过ssh启动vnc并按提示设置密码
vnc连接方式IP:9001
sed -ri 's/5900/9000/g' /usr/bin/vncserver && /usr/bin/vncserver :1 -geometry 1280x800 -depth 24 && tail -f /root/.vnc/*:1.log
