##########################################################
#  Makefile
#       Projet Unix: "Bataille"
#       DOLEGA Patrycjusz
#       HOFFMANN Xavier 
###########################################################
CC=gcc
CFLAGS=-g

all: client serveur

serveur: server.o semaphore.o shm.o
	$(CC) $(CFLAGS) -o serveur server.o semaphore.o shm.o

client: client.o
	$(CC) $(CFLAGS) -o client client.o
	
client.o: client.c client.h util.h
	$(CC) $(CFLAG) -c client.c

serveur.o: server.c server.h
	$(CC) $(CFLAG) -c server.c

semaphore.o : semaphore.c semaphore.h
	$(CC) $(CFLAG) -c semaphore.c

shm.o : shm.c shm.h util.h
	$(CC) $(CFLAG) -c shm.c
	
clean :
	rm -f *.gch *.o server client
