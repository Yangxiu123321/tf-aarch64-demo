#include <tensorflow/cc/client/client_session.h>
#include <iostream>
#include <tensorflow/cc/ops/array_ops.h>
#include <tensorflow/cc/ops/math_ops.h>
#include <tensorflow/core/framework/tensor.h>

using namespace std;
using namespace tensorflow;
using namespace tensorflow::ops;

int main(){
    Scope root = Scope::NewRootScope();
    auto a = Placeholder(root, DT_INT32);
    auto c = Add(root, a, {41});

    ClientSession session(root);
    std::vector<Tensor> outputs;

    Status s = session.Run({ {a, {1} } }, {c}, &outputs);
    if (!s.ok()) {
        cout << "error handling ... ..." << endl;
    }else{
        auto res = outputs[0].flat<float>() ;
        cout << "res is :  " << res << endl;       
    }
    
    return 0;
}
