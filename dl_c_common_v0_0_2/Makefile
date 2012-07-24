CC=gcc
INCLUDES=-I../dl_c_iso8583_v0_0_3
all:
	${CC} -c dl_timer.c ${INCLUDES}
	${CC} -c dl_output.c ${INCLUDES}
	${CC} -c dl_mem.c ${INCLUDES}
	${CC} -c dl_str.c ${INCLUDES}
	${CC} -c dl_time.c ${INCLUDES}

clean:
	rm -f dl_timer.o dl_output.o dl_mem.o dl_str.o dl_time.o *~