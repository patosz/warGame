/* DOLEGA PATRYCJUSZ pdolega15
	HOFFMANN XAVIER xhoffma15
	
*/
#ifndef _SHM_H_
#define _SHM_H_

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

#include <sys/ipc.h>
#include <sys/shm.h>

#include "util.h"

void create_shm(key_t);
void detach_shm(void*);
void delete_shm();
int* attacher_shm(key_t, int);

void create_shm_nb_lecteurs(key_t);
int* attach_to_shm_nb_lecteurs(key_t);
void detach_from_shm_nb_lecteurs(void*);


#endif