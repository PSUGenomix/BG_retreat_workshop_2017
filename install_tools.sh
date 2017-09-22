#!/usr/bin/bash

#creat bin and source directories
echo "Creating directories"
mkdir -p ~/work/bin
mkdir -p ~/work/src

##Installation

echo "Installing BWA"
cd  ~/work/src
wget https://downloads.sourceforge.net/project/bio-bwa/bwa-0.7.16a.tar.bz2
tar -xvf  bwa-0.7.16a.tar.bz2
cd bwa-0.7.16a
make
cp bwa  ~/work/bin/
echo "Done"

echo "Installing Freebayes"
cd  ~/work/src
git clone --recursive git://github.com/ekg/freebayes.git
cd freebayes
make
cp bin/freebayes  ~/work/bin/
echo "Done"

echo "Installing bedtools"
cd  ~/work/src
wget https://github.com/arq5x/bedtools2/releases/download/v2.26.0/bedtools-2.26.0.tar.gz
tar -zxvf bedtools-2.26.0.tar.gz
cd bedtools2
make
cp bin/*  ~/work/bin/
echo "Done"

cd ~
