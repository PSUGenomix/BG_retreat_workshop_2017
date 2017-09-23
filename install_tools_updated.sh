#!/usr/bin/bash

#creat bin and source directories
echo "Creating directories"
mkdir -p bin
mkdir -p src

##Installation

echo "Installing BWA"
cd  src
wget https://downloads.sourceforge.net/project/bio-bwa/bwa-0.7.16a.tar.bz2
tar -xvf  bwa-0.7.16a.tar.bz2
cd bwa-0.7.16a
make
cd ..

#cp bwa  ~/work/bin/
#echo "Done"

echo "Installing Freebayes"
git clone --recursive git://github.com/ekg/freebayes.git
cd freebayes
make
cd ..
#cp bin/freebayes  ~/work/bin/
#echo "Done"

echo "Installing bedtools"
wget https://github.com/arq5x/bedtools2/releases/download/v2.26.0/bedtools-2.26.0.tar.gz
tar -zxvf bedtools-2.26.0.tar.gz
cd bedtools2
make
#cp bin/*  ~/work/bin/
echo "Done"
cd ..

cp bwa-0.7.16a/bin/*  bin/
cp freebayes/bin/freebayes  bin/
cp bedtools2/bin/*  bin/

