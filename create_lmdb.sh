#!/usr/bin/env sh
MY=/data/home/scv6134/run/ziti_shbie/myfile

echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb
$CAFFE_ROOT/build/tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/data/home/scv6134/run/ziti_shbie/shuju_1/ \
$MY/train.txt \
$MY/img_train_lmdb

echo "Create test lmdb.."
rm -rf $MY/img_test_lmdb
$CAFFE_ROOT/build/tools/convert_imageset \
--shuffle \
--resize_width=256 \
--resize_height=256 \
/data/home/scv6134/run/ziti_shbie/shuju_1/ \
$MY/test.txt \
$MY/img_test_lmdb

echo "All Done.."