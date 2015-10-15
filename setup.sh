#!/usr/bin/env bash

cd /root \
    && wget http://apache.communilink.net//xerces/c/3/sources/xerces-c-3.1.2.tar.gz \
    && wget http://nchc.dl.sourceforge.net/project/boost/boost/1.58.0/boost_1_58_0.tar.gz \
    && wget https://github.com/DOCGroup/MPC/archive/ACE+TAO+CIAO-6_3_3.tar.gz \
    && wget https://github.com/objectcomputing/quickfast/archive/V1_5.tar.gz \
    && tar -xvzf xerces-c-3.1.2.tar.gz && tar -xvzf boost_1_58_0.tar.gz && tar -xvzf ACE+TAO+CIAO-6_3_3.tar.gz && tar -xvzf V1_5.tar.gz && rm -rf *.tar.gz \
    && cd /root/xerces-c-3.1.2 && ./configure --prefix=/root/xerces-c-3.1.2 && make && make install && rm -rf `ls |egrep -v -w '(lib|include)'` \
    && cd /root/boost_1_58_0 && ./bootstrap.sh --prefix=/root/boost_1_58_0 && ./b2 --layout=versioned

cd /root/boost_1_58_0 \
     ./b2 install && rm -rf `ls |egrep -v -w '(lib|include)'`

#QUICKFAST
export QUICKFAST_ROOT=/root/quickfast-1_5
export MPC_ROOT=/root/MPC-ACE-TAO-CIAO-6_3_3
export BOOST_ROOT=/root/boost_1_58_0
export BOOST_ROOT_LIB=$BOOST_ROOT/lib
export XERCESCROOT=/root/xerces-c-3.1.2
export XERCES_ROOT=/root/xerces-c-3.1.2
export XERCES_LIBNAME=xerces-c-3.1
export XERCES_LIBPATH=$XERCES_ROOT/lib
export XERCES_INCLUDE=$XERCES_ROOT/include
export PATH=$QUICKFAST_ROOT/bin:$MPC_ROOT:$PATH
export LD_LIBRARY_PATH=$XERCES_LIBPATH:$QUICKFAST_ROOT/lib:$BOOST_ROOT_LIB:$LD_LIBRARY_PATH

cd /root/quickfast-1_5 \
    && ./m.sh \
    && make


#LIQUIBOOK
export LIQUIBOOK_ROOT=/root/liquibook
export CIAO_ROOT=/dev/null
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIQUIBOOK_ROOT/lib

cd /root \
    && git clone https://github.com/objectcomputing/liquibook.git \
    && cd liquibook/ \
    && git submodule init \
    && git submodule update \
    && mwc.pl -type make liquibook.mwc \
    && make depend \
    && make all
