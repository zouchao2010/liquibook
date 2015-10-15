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

### 测试publisher
```
root@liquibook:~/liquibook/examples/depth_feed_publisher# ./depth_feed_publisher -p 9999
Encoding incr depth message for symbol COST with 0 bids, 1 asks
DepthFeedConnection::run()
Encoding incr depth message for symbol HSIC with 1 bids, 0 asks
Encoding incr depth message for symbol DISCA with 1 bids, 0 asks
accepted client connection
Encoding incr depth message for symbol FOSL with 0 bids, 1 asks
Encoding full depth message for symbol FOSL with 5 bids, 5 asks
Encoding incr depth message for symbol COST with 0 bids, 1 asks
Encoding full depth message for symbol COST with 5 bids, 5 asks
Encoding incr depth message for symbol BMC with 1 bids, 0 asks
Encoding full depth message for symbol BMC with 5 bids, 5 asks
Encoding incr depth message for symbol FOSL with 1 bids, 0 asks
Encoding incr depth message for symbol CHRW with 0 bids, 1 asks
Encoding full depth message for symbol CHRW with 5 bids, 5 asks
Encoding incr depth message for symbol BBBY with 0 bids, 1 asks
Encoding full depth message for symbol BBBY with 5 bids, 5 asks
Encoding incr depth message for symbol SNDK with 0 bids, 1 asks
Encoding full depth message for symbol SNDK with 5 bids, 5 asks
Encoding incr depth message for symbol BRCM with 0 bids, 1 asks
Encoding full depth message for symbol BRCM with 5 bids, 5 asks
Encoding incr depth message for symbol LIFE with 1 bids, 0 asks
Encoding full depth message for symbol LIFE with 5 bids, 5 asks
Encoding incr depth message for symbol NVDA with 0 bids, 1 asks
Encoding full depth message for symbol NVDA with 5 bids, 5 asks
Encoding incr depth message for symbol CSCO with 0 bids, 1 asks
Encoding full depth message for symbol CSCO with 5 bids, 5 asks
Encoding incr depth message for symbol CELG with 0 bids, 1 asks
Encoding full depth message for symbol CELG with 5 bids, 5 asks
Encoding incr depth message for symbol AVGO with 1 bids, 0 asks
Encoding full depth message for symbol AVGO with 5 bids, 5 asks
Encoding incr depth message for symbol PCLN with 1 bids, 0 asks
Encoding full depth message for symbol PCLN with 5 bids, 5 asks
Encoding incr depth message for symbol ATVI with 1 bids, 0 asks
Encoding full depth message for symbol ATVI with 5 bids, 5 asks
Encoding incr depth message for symbol EXPE with 0 bids, 1 asks
Encoding full depth message for symbol EXPE with 5 bids, 5 asks
Got trade for CELG qty 400 cost 4677200
sending trade message with 5 fields
Encoding incr depth message for symbol CELG with 1 bids, 1 asks
Encoding incr depth message for symbol CELG with 2 bids, 0 asks
Encoding incr depth message for symbol SYMC with 0 bids, 1 asks
Encoding full depth message for symbol SYMC with 5 bids, 5 asks
Encoding incr depth message for symbol INTC with 0 bids, 1 asks
Encoding full depth message for symbol INTC with 5 bids, 5 asks
Encoding incr depth message for symbol PAYX with 1 bids, 0 asks
Encoding full depth message for symbol PAYX with 5 bids, 5 asks

```

### 测试subscriber
```
root@liquibook:~/liquibook/examples/depth_feed_publisher# ./depth_feed_subscriber -p 9999
Connecting to feed
DepthFeedConnection::run()
Connecting to feed
connected to feed
1444871959 Got depth msg 1 for symbol FOSL
----------BID----------    ----------ASK----------
                              95.24       500 [ 1]
                       
1444871960 Got depth msg 2 for symbol COST
----------BID----------    ----------ASK----------
                             108.31       300 [ 1]
                             108.86       800 [ 1]
                       
1444871961 Got depth msg 3 for symbol BMC
----------BID----------    ----------ASK----------
   45.29       400 [ 1]
                       
1444871962 Got depth msg 4 for symbol FOSL
----------BID----------    ----------ASK----------
   94.26       600 [ 1]       95.24       500 [ 1]
                       
1444871963 Got depth msg 5 for symbol CHRW
----------BID----------    ----------ASK----------
                              58.61       900 [ 1]
                       
1444871964 Got depth msg 6 for symbol BBBY
----------BID----------    ----------ASK----------
                              68.22       100 [ 1]
                       
1444871965 Got depth msg 7 for symbol SNDK
----------BID----------    ----------ASK----------
                              51.32       500 [ 1]
                       
1444871966 Got depth msg 8 for symbol BRCM
----------BID----------    ----------ASK----------
                              35.47       100 [ 1]
                       
1444871967 Got depth msg 9 for symbol LIFE
----------BID----------    ----------ASK----------
   73.03       100 [ 1]
                       
1444871968 Got depth msg 10 for symbol NVDA
----------BID----------    ----------ASK----------
                              13.68       700 [ 1]
                       
1444871969 Got depth msg 11 for symbol CSCO
----------BID----------    ----------ASK----------
                              20.61       100 [ 1]
                       
1444871970 Got depth msg 12 for symbol CELG
----------BID----------    ----------ASK----------
                             116.93       400 [ 1]
                       
1444871971 Got depth msg 13 for symbol AVGO
----------BID----------    ----------ASK----------
   31.28       800 [ 1]
                       
1444871972 Got depth msg 14 for symbol PCLN
----------BID----------    ----------ASK----------
  693.24      1000 [ 1]
                       
1444871973 Got depth msg 15 for symbol ATVI
----------BID----------    ----------ASK----------
   14.66       200 [ 1]
                       
1444871974 Got depth msg 16 for symbol EXPE
----------BID----------    ----------ASK----------
                              55.11       400 [ 1]
                       
1444871975 Got trade msg 17 for symbol CELG: 400@116.93
1444871975 Got depth msg 18 for symbol CELG
----------BID----------    ----------ASK----------
  117.56       300 [ 1]
                       
1444871976 Got depth msg 19 for symbol CELG
----------BID----------    ----------ASK----------
  117.88       800 [ 1]
  117.56       300 [ 1]
                       
1444871977 Got depth msg 20 for symbol SYMC
----------BID----------    ----------ASK----------
                              24.49       900 [ 1]
                       
1444871978 Got depth msg 21 for symbol INTC
----------BID----------    ----------ASK----------
                              24.03       300 [ 1]
                       
1444871979 Got depth msg 22 for symbol PAYX
----------BID----------    ----------ASK----------
   36.10       800 [ 1]
   
```
