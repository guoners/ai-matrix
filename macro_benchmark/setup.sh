#!/bin/bash

apt-get update
apt-get install software-properties-common
add-apt-repository ppa:git-core/ppa
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

echo "##########################################"
echo "### Set up CNN_Tensorflow              ###"
echo "##########################################"
cd CNN_Tensorflow
./setup.sh
cd ..

echo "##########################################"
echo "### Set up DeepInterest                ###"
echo "##########################################"
cd DeepInterest
./setup.sh
cd ..

echo "##########################################"
echo "### Set up Mask_RCNN                   ###"
echo "##########################################"
cd Mask_RCNN
./setup.sh
cd ..

pip3 install xlsxwriter
apt-get install bc
yum install bc

echo "##########################################"
echo "### Set up DSSD                        ###"
echo "##########################################"
cd DSSD
./setup.sh
cd ..

echo "##########################################"
echo "### Set up SSD_VGG16_Caffe             ###"
echo "##########################################"
cd SSD_VGG16_Caffe
./setup.sh
cd ..

echo "##########################################"
echo "### Set up SSD_ResNet18_Caffe          ###"
echo "##########################################"
cd SSD_ResNet18_Caffe
./setup.sh
cd ..

echo "##########################################"
echo "### Set up NCF                         ###"
echo "##########################################"
cd NCF
./setup.sh
cd ..

echo "##########################################"
echo "### Set up Faster_RCNN                 ###"
echo "##########################################"
cd Faster_RCNN
./setup.sh
cd ..

echo "##########################################"
echo "### Set up WideDeep                    ###"
echo "##########################################"
cd WideDeep
./setup.sh
cd ..

echo "##########################################"
echo "### Set up CPN                         ###"
echo "##########################################"
cd CPN
./setup.sh
cd ..

echo "##########################################"
echo "### Set up SegLink                     ###"
echo "##########################################"
cd SegLink
./setup.sh
cd ..

echo "##########################################"
echo "### Set up CRNN                        ###"
echo "##########################################"
cd CRNN
./setup.sh
cd ..
