FROM centos

ARG pkg=yum
ENV install="$pkg install -y"

# 安装epel源,并修改为ali源
COPY source.sh /root

RUN chmod 755 /root/source.sh && \
    /root/source.sh $pkg

# 安装基础软件
RUN $install fish neovim
