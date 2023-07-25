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
export RISCV=$SDS_TOOLS/sdk/riscv-gcc/
export VERILATOR_ROOT=$SDS_TOOLS/verilator/
export CMAKE_HOME=$SDS_TOOLS/cmake/
export EDADUINO_TCPPORT=57357
export CONAN_USER_HOME=${SDS_LAB}/common/conan-packages

alias edaduino-ide="$SDS_TOOLS/sdk/eclipse/eclipse"
alias cmake=$CMAKE_HOME/bin/cmake

export VP_DIR=${SDS_LAB}/common/edaduino
export SDK_DIR=${SDS_LAB}/common/edaduino-sdk
