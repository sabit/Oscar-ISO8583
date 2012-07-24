CC=gcc
INCLUDES=-Idl_c_iso8583_v0_0_3 -Idl_c_common_v0_0_2


all: common iso8583 demo.bin benchmark.bin

clean:
	make -C dl_c_common_v0_0_2 clean
	make -C dl_c_iso8583_v0_0_3 clean
	rm -f benchmark.bin demo.bin  *.o *~


common:
	make -C dl_c_common_v0_0_2

iso8583:
	make -C dl_c_iso8583_v0_0_3
	
benchmark.bin:
	${CC} -c benchmark.c ${INCLUDES}
	${CC} -o benchmark.bin benchmark.o dl_c_iso8583_v0_0_3/dl_iso8583.o dl_c_iso8583_v0_0_3/dl_iso8583_defs_1987.o dl_c_common_v0_0_2/dl_mem.o \
		dl_c_iso8583_v0_0_3/dl_iso8583_defs_1993.o dl_c_iso8583_v0_0_3/dl_iso8583_common.o dl_c_iso8583_v0_0_3/dl_iso8583_fields.o \
		dl_c_common_v0_0_2/dl_str.o dl_c_common_v0_0_2/dl_output.o dl_c_common_v0_0_2/dl_timer.o dl_c_common_v0_0_2/dl_time.o
	

demo.bin:
	${CC} -c demo.c ${INCLUDES}
	${CC} -o demo.bin demo.o dl_c_iso8583_v0_0_3/dl_iso8583.o dl_c_iso8583_v0_0_3/dl_iso8583_defs_1987.o dl_c_common_v0_0_2/dl_mem.o \
		dl_c_iso8583_v0_0_3/dl_iso8583_defs_1993.o dl_c_iso8583_v0_0_3/dl_iso8583_common.o dl_c_iso8583_v0_0_3/dl_iso8583_fields.o \
		dl_c_common_v0_0_2/dl_str.o dl_c_common_v0_0_2/dl_output.o dl_c_common_v0_0_2/dl_timer.o dl_c_common_v0_0_2/dl_time.o


	