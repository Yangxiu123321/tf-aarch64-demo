#include <iostream>
#include <stdio.h>
#include <dlfcn.h>
using namespace std;

int main(void){
   void* handle1 = dlopen("/home/pi/code/nfs/tensorflow/dlopen/aarch64-tensorflow-example/lib/tensorflow/libtensorflow_cc.so",RTLD_NOW);
    if(!handle1){
        cout << "open error" << endl;
        cout << dlerror() << endl;
    }
   void* handle2 = dlopen("/home/pi/code/nfs/tensorflow/dlopen/aarch64-tensorflow-example/lib/tensorflow/libtensorflow_framework.so",RTLD_NOW);
    if(!handle2){
        cout << "open error" << endl;
        cout << dlerror() << endl;
    }
    dlclose(handle1);
    dlclose(handle2);
    return 0;
}
