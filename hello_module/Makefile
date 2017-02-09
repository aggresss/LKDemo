#
#  A simple module for helloworld
#
#  Copyright (C) 2017 aggresss (aggresss.163.com)
#
#  Licensed under GPLv2 or later.
# 

ifneq ($(KERNELRELEASE),)

MODULE_NAME := test
$(MODULE_NAME)-objs := hello.o
obj-m += $(MODULE_NAME).o

else

KVER := $(shell uname -r)
KDIR := /lib/modules/$(KVER)/build

all:
	$(MAKE) -C $(KDIR) M=$(CURDIR) modules
clean:
	rm -rf *. *.o *.ko *.mod.c *.order *.symvers

endif
