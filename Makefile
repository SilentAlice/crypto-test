obj-m += refone.o
refone-objs := crypto-test.o aes_cbc_asm.o aes_ctr_asm.o aesni-intel_asm.o 

all:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
