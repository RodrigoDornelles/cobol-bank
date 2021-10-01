MAN = src/MAN0.cbl src/MAN1.cbl
UTILS = src/UTIL0.cbl src/UTIL1.cbl

manager:
	cobc -xjd ${MAN} ${UTILS} -o bin/man