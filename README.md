# liquibook

## build
```shell
docker build -t zouchao2010/liquibook .

```

## pull
```shell
docker pull zouchao2010/liquibook

```


## run(创建并运行一个容器，退出时删除容器)
```shell
docker run  --name liquibook \
            -h liquibook \
            -it --rm zouchao2010/liquibook
            
```

## run(创建并运行一个容器，以守护进程方式)
```shell
docker run  --name liquibook \
            -h liquibook \
            -dt zouchao2010/liquibook
            
```

## start|stop|restart(已存在的容器)
```shell
docker start|stop|restart liquibook

```

## exec(使用已运行的容器执行命令)
```shell
docker exec -it liquibook /bin/bash

```

## 测试
```shell
cd ~/liquibook/examples/depth_feed_publisher
./depth_feed_publisher -p 9999
./depth_feed_subscriber -p 9999

```
