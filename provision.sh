# install basic deps

apt-get update
apt-get install -y build-essential libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev
apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler libatlas-base-dev
apt-get install -y git
apt-get install -y cmake
apt-get install -y python-pip
apt-get install -y gfortran
for req in $(cat /vagrant/caffe/python/requirements.txt); do pip install $req; done
cd /vagrant/caffe
mkdir build
cd build
cmake ..
make
make install
sudo ln /dev/null /dev/raw1394
/vagrant/caffe/scripts/download_model_from_gist.sh 034c6ac3865563b69e60
/vagrant/caffe/scripts/download_model_binary.py /vagrant/caffe/models/bvlc_googlenet
export PYTHONPATH=/vagrant/caffe/python