1. 先分清楚要开发的功能需要用到的高德SDK（比如：搜索POI，那么需要的高德SDK即搜索SDK）；
2. 找到repo内对应的子工程(比如search工程);
3. 在develop分支下开发：
    1. 在`SearchHandlers.h`文件内添加要实现的功能（比如：要实现[获取POI数据](https://lbs.amap.com/api/android-sdk/guide/map-data/poi), 创建新的实现`SearchMethodHandler`接口的委托类.
    2. 实现功能后, 在`FunctionRegistry`类中注册功能.
    3. 在dart增加对应的方法.
    4. 新功能的开发就完成了.
4. 向主Repo的develop功能分支发起PR；
