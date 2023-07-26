#!/bin/sh

################################################################
# \brief Environmental helper source for SDS in SS'20
# \author geier
# \date 04/23/20
################################################################
TUMID=$(id -n -u)
export SDS_LAB=/usr/local/labs/SDS/current
export SDS_TOOLS=$SDS_LAB/common/tools

# use venv for python stuff
source ${SDS_LAB}/common/venv/bin/activate

# Add helper variables to environment
export ETISS_HOME=$SDS_TOOLS/etiss/current/
export SYSTEMC=$SDS_TOOLS/systemc/
export SYSTEMC_HOME=$SDS_TOOLS/systemc/
export SYSTEMC_INCLUDE_DIRS=$SYSTEMC/include/
export SYSTEMC_LIB_DIRS=$SYSTEMC/lib/
export RISCV=$SDS_TOOLS/sdk/riscv-gcc/
export VERILATOR_ROOT=$SDS_TOOLS/verilator/
export CMAKE_HOME=$SDS_TOOLS/cmake/
export EDADUINO_TCPPORT=56391
export CONAN_USER_HOME=${SDS_LAB}/common/conan-packages
export AES_VRTL_DIR=${SDS_LAB}/${TUMID}/lab-module-3/hls

alias edaduino-ide="$SDS_TOOLS/sdk/eclipse/eclipse"
alias cmake=$CMAKE_HOME/bin/cmake

export VP_DIR=${SDS_LAB}/common/edaduino
export SDK_DIR=${SDS_LAB}/common/edaduino-sdk

source $SDS_LAB/common/vivadoEnvSettings.sh
