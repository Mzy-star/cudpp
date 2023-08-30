# cudpp
### 调试记录
1、将cudpp-master/ext/moderngpu/include/kernels目录下scan.cuh文件中的报错行代码修改为如下代码：  
&nbsp;&nbsp;&nbsp;&nbsp;124行：T total = TileScan::template DeviceScanTile<Type, DataIt, OutputIt>(data_global, count, tid, identity, op, identity, dest_global, shared.tileScanStorage);  
&nbsp;&nbsp;&nbsp;&nbsp;153行：TileScan::template DeviceScanTile<Type, DataIt, OutputIt>(data_global + gid, count2, tid, identity, op, start, dest_global + gid, tileScanStorage);

2、在cudpp-master/ext/moderngpu/src目录下的mgpucontext.cu文件中加入#include &lt;cstring&gt;。

3、将cudpp-master/src/cudpp/app目录下的multisplit_app.cu文件中的CubDebugExit(g_allocator.DeviceFree(d_temp_storage))直接修改为g_allocator.DeviceFree(d_temp_storage)。

4、将三个测试用例目录下的cmakelists文件中的link_directories(${CMAKE_SOURCE_DIR}/../../lib/)修改为link_directories(${CMAKE_SOURCE_DIR}/../../build/lib/)。
