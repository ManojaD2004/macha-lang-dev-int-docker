FROM ubuntu

WORKDIR /home

RUN apt-get update

RUN apt-get install curl -y

RUN apt-get install ca-certificates -y

# we wil need to tell bash to load .bashrc manually
# ENV BASH_ENV ~/.bashrc
# needed by volta() function
ENV VOLTA_HOME /root/.volta
# make sure packages managed by volta will be in PATH
ENV PATH $VOLTA_HOME/bin:$PATH

RUN curl https://get.volta.sh | bash 

RUN volta install node

RUN mkdir macha-lang

COPY . /home/macha-lang

WORKDIR /home/macha-lang/client

RUN npm install

WORKDIR /home/macha-lang/server

RUN npm install

RUN npm install -g rollup

RUN npm install -g nodemon

WORKDIR /home/macha-lang

CMD ["./start.sh"]
