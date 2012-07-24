CC=gcc
INCLUDES=-I../dl_c_common_v0_0_2 -I.
all:
	${CC} -c dl_iso8583_defs_1987.c ${INCLUDES}
	${CC} -c dl_iso8583_fields.c ${INCLUDES}
	${CC} -c dl_iso8583_defs_1993.c ${INCLUDES}
	${CC} -c dl_iso8583.c ${INCLUDES}
	${CC} -c dl_iso8583_common.c ${INCLUDES}

clean:
	rm -f dl_iso8583_defs_1987.o dl_iso8583_fields.o dl_iso8583_defs_1993.o dl_iso8583.o dl_iso8583_common.o