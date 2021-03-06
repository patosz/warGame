##########################################################
#  Makefile
#       Projet Unix: "Bataille"
#       DOLEGA Patrycjusz
#       HOFFMANN Xavier 
###########################################################
CC=gcc
CFLAGS=-g -ansi

all: client serveur

serveur: serveur.o semaphore.o shm.o
	$(CC) $(CFLAGS) -o serveur serveur.o semaphore.o shm.o

client: client.o semaphore.o shm.o cartes.o
	$(CC) $(CFLAGS) -o client client.o semaphore.o shm.o cartes.o
	
client.o: client.c client.h util.h 
	$(CC) $(CFLAG) -c client.c

serveur.o: serveur.c serveur.h 
	$(CC) $(CFLAG) -c serveur.c

semaphore.o : semaphore.c semaphore.h shm.h
	$(CC) $(CFLAG) -c semaphore.c

shm.o : shm.c shm.h util.h
	$(CC) $(CFLAG) -c shm.c

cartes.o : cartes.c cartes.h
	$(CC) $(CFLAG) -c cartes.c

clean :
	rm -f *.gch *.o serveur client
