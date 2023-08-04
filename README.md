# AWC Miner

这是一款用于挖掘官服[Awacoin](https://github.com/Hiyoteam/awacoin)的高速矿机程序，完全基于shell编写。    

在使用该脚本前，您需要按照注释更改coin.sh中`ACC`与`PWD`的值，更改完毕后方可运行。  

本脚本依赖`jq`和`hashcat`这两个GNU程序运行。     
    
如果您需要多线程和持续挖掘，您可以为该程序设定循环执行并挂上`nohup`。    

## 使用效果

在使用骁龙870的Ubuntu 22.04 LTS proot容器内运行单次挖矿速度可提升至9秒/次。    
    
![Screenshot_2023-08-04-13-29-07-870_com.termux.jpg](https://s2.loli.net/2023/08/04/dmzXaI6HDl43N1s.jpg)
