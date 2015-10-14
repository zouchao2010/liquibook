#!/usr/bin/env bash

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
export LIQUIBOOK_ROOT=/root/liquibook
export CIAO_ROOT=/dev/null
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIQUIBOOK_ROOT/lib
