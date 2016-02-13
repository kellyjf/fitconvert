

SRCS := fit.c fit_product.c fit_crc.c fit_convert.c examples/decode/decode.c
OBJS := $(patsubst %.c,%.o,$(SRCS))

%.o : %.c
	gcc -m32 -c -g -I$(PWD)  $< -o $@

decode : $(OBJS)
	gcc -m32 -o $@ $^
	
clean :
	rm -rf decode $(OBJS)
	
