FROM golang:1.16

ENV GOROOT=/usr/local/go                
ENV PATH=$PATH:/usr/local/go/bin   
ENV GOPATH=/root/go
ENV PATH=$GOPATH/bin/:$PATH

RUN mkdir -p /home/app

# 对外端口
EXPOSE 8888

COPY . /home/app

# 运行项目
ENTRYPOINT ["go","run","/home/app/main.go"]