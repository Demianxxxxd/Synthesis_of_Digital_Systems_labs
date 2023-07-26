BUILD_DIR?=build-$(TYPE)
INSTALL_DIR?=$(BUILD_DIR)/installed

VERILATOR_ROOT?=/usr/local/labs/SDS/current/common/tools/verilator/share/verilator
SOL?=sol1

CC=gcc
CXX=g++
LD=c++

EXE=cc_aes_test
SC_EXE=sc_aes_test

OBJFILES=$(BUILD_DIR)/aes_test.o $(BUILD_DIR)/aes_ha.o $(BUILD_DIR)/aes.o
TYPE?=basic

RTL_DIR=aes_ha_$(TYPE)_prj/$(SOL)/syn/verilog
DRV_DIR=aes_ha_$(TYPE)_prj/$(SOL)/impl/misc/drivers/*/src
TOP=aes_ha

SYSTEMC=$(SDS_TOOLS)/systemc

SYSTEMC_LIBDIR=$(SYSTEMC)/lib
SYSTEMC_INCLUDE=$(SYSTEMC)/include

SYSTEMC_INCLUDE_DIR=$(SYSTEMC_INCLUDE)
SYSTEMC_LIBRARY_DIR=$(SYSTEMC_LIBDIR)

MODEL_CFLAGS=-O3 -g3 -std=c++17

all:  clean $(BUILD_DIR) test vrtl install

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/aes.o: c_src/aes.c
	$(CC) -g -o $@ -c $^

$(BUILD_DIR)/aes_ha.o: hls/$(TYPE)/aes_ha.c
	$(CC) -g -Ic_src -I. -Ihls/$(TYPE) -o $@ -c $^

$(BUILD_DIR)/aes_test.o: testbench/aes_test.c
	$(CC) -g -Ic_src -I. -Ihls/$(TYPE) -o $@ -c $^

$(BUILD_DIR)/$(EXE): $(OBJFILES)
	$(CXX) -g -Ic_src -I. -Ihls/$(TYPE) $^ -o $@

test: $(BUILD_DIR) $(BUILD_DIR)/$(EXE)
	@echo  "##############################################################"
	@echo  "#                         C TEST                             #"
	$(BUILD_DIR)/$(EXE)
	@echo  "##############################################################"

shared: $(BUILD_DIR)/libV$(TOP).so

$(RTL_DIR).patched: $(RTL_DIR)
	@echo  "##############################################################"
	@echo  "# Patching RTL files ... $(TOP)"
	mkdir -p $(RTL_DIR).patched
	cp -r $(RTL_DIR)/* $(RTL_DIR).patched/
	python3 scripts/patch_romreaders.py -dir $(RTL_DIR).patched -abs 1
	@echo  "##############################################################"

vrtl: $(BUILD_DIR) $(RTL_DIR).patched
	@echo  "##############################################################"
	@echo  "#                          RTL                               #"
	@echo  "# Building the (Verilator)RTL model... $(TOP)"
	mkdir -p $(BUILD_DIR)/vrtl
	mkdir -p $(BUILD_DIR)/vrtl/$(TYPE)
	${VERILATOR_ROOT}/bin/verilator --sc -O3 --top-module $(TOP) \
		-CFLAGS "$(MODEL_CFLAGS) -fPIC" \
		+define+VERILATOR \
		--unroll-count 256 \
		--pins-bv 2 \
		-Werror-PINMISSING \
		-Wno-fatal \
		-Wno-PINCONNECTEMPTY \
		-Wno-ASSIGNDLY \
		-Wno-DECLFILENAME \
		-Wno-UNUSED \
		-Wno-UNOPTFLAT \
		-Wno-style \
		-Wno-CASEINCOMPLETE \
		-Wno-LITENDIAN \
		-Wno-UNOPT \
		-Wno-WIDTH \
		-Wno-BLKANDNBLK \
		$(RTL_DIR).patched/*.v \
		--Mdir $(BUILD_DIR)/vrtl/$(TYPE)
	@echo  "# ... Done: RTL model $(TOP)"
	@echo  "##############################################################"

$(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP).h: vrtl

$(BUILD_DIR)/libV$(TOP)_$(TYPE).so: $(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP)__ALL.a $(BUILD_DIR)/vrtl/$(TYPE)/verilated.o
	$(CXX) -shared -o $@ -Wl,--whole-archive $^ -Wl,--no-whole-archive

$(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP)__ALL.a: $(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP).h
	make -j$(shell nproc) -C $(BUILD_DIR)/vrtl/$(TYPE) -f V$(TOP).mk V$(TOP)__ALL.a SYSTEMC_INCLUDE=$(SYSTEMC_INCLUDE) SYTEMC_LIBDIR=$(SYSTEMC_LIBDIR) SYSTEMC=$(SYSTEMC)

$(BUILD_DIR)/vrtl/$(TYPE)/verilated.o: $(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP).h
	make -j$(shell nproc) -C $(BUILD_DIR)/vrtl/$(TYPE) -f V$(TOP).mk verilated.o SYSTEMC_INCLUDE=$(SYSTEMC_INCLUDE) SYTEMC_LIBDIR=$(SYSTEMC_LIBDIR) SYSTEMC=$(SYSTEMC)

$(INSTALL_DIR): $(BUILD_DIR)
	mkdir -p $(INSTALL_DIR)

$(INSTALL_DIR)/$(TYPE): $(INSTALL_DIR)
	mkdir -p $(INSTALL_DIR)/$(TYPE)

$(INSTALL_DIR)/$(TYPE)/lib: $(INSTALL_DIR)/$(TYPE)
	mkdir -p $(INSTALL_DIR)/$(TYPE)/lib

$(INSTALL_DIR)/$(TYPE)/include: $(INSTALL_DIR)/$(TYPE)
	mkdir -p $(INSTALL_DIR)/$(TYPE)/include

$(INSTALL_DIR)/$(TYPE)/drivers: $(INSTALL_DIR)/$(TYPE)
	mkdir -p $(INSTALL_DIR)/$(TYPE)/drivers

install: $(INSTALL_DIR)/$(TYPE)/drivers $(INSTALL_DIR)/$(TYPE)/include $(INSTALL_DIR)/$(TYPE)/lib $(BUILD_DIR)/vrtl/$(TYPE)/V$(TOP).h $(BUILD_DIR)/libV$(TOP)_$(TYPE).so
	@echo  "##############################################################"
	@echo  "#                         INSTALL                            #"
	cp $(BUILD_DIR)/vrtl/$(TYPE)/*.h $(INSTALL_DIR)/$(TYPE)/include
	cp $(BUILD_DIR)/libV$(TOP)_$(TYPE).so $(INSTALL_DIR)/$(TYPE)/lib/libV$(TOP).so
	cp $(DRV_DIR)/x$(TOP).c $(DRV_DIR)/x$(TOP).h $(DRV_DIR)/x$(TOP)_hw.h $(INSTALL_DIR)/$(TYPE)/drivers
	cp $(DRV_DIR)/x$(TOP).c $(DRV_DIR)/x$(TOP).h $(DRV_DIR)/x$(TOP)_hw.h ../sw/xil/$(TYPE)
	@echo  "##############################################################"

clean:
	rm -r -f $(BUILD_DIR)/vrtl/$(TYPE) $(RTL_DIR).patched $(INSTALL_DIR)/$(TYPE) log/ ./*.dat *.vcd
