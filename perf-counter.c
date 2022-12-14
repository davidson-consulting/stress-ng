#include "perf-counter.h"
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h> 
#include <string.h>

#define INIT_CAPACITY 12

/**
 * The perf counter for a thread
 */
typedef struct thread_perf_counter {
    pthread_t pid;
    perf_counter_array * counters;
} thread_perf_counter;


thread_perf_counter * __PERF_COUNTERS__ = NULL;

uint64_t __PERF_COUNTERS_LEN__ = 0;

uint64_t __PERF_COUNTERS_CAP__ = 0;

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

void init_perf_counters () {
    printf ("INIT perf counters %ld\n", pthread_self ());
    pthread_mutex_lock (&mutex);

    __PERF_COUNTERS__ = calloc (sizeof (thread_perf_counter), INIT_CAPACITY);
    __PERF_COUNTERS_LEN__ = 1;
    __PERF_COUNTERS_CAP__ = INIT_CAPACITY;
    __PERF_COUNTERS__[0].pid = pthread_self ();
    __PERF_COUNTERS__[0].counters = calloc (sizeof (perf_counter_array), 1);
    
    pthread_mutex_unlock (&mutex);
}

perf_counter_array* get_perf_counters () {
    perf_counter_array * ret = NULL;
    // pid_t pid = getpid ();
    pthread_t pid = pthread_self ();
    
    if (__PERF_COUNTERS__ == NULL) init_perf_counters ();
    
    pthread_mutex_lock(&mutex);    
    for (uint64_t i = 0 ; i < __PERF_COUNTERS_LEN__ ; i++) {
	if (__PERF_COUNTERS__[i].pid == pid) {
	    ret = __PERF_COUNTERS__[i].counters;
	    break;
	}
    }

    if (ret == NULL) {
	if (__PERF_COUNTERS_LEN__ == __PERF_COUNTERS_CAP__) {
	    thread_perf_counter * aux = __PERF_COUNTERS__;
	    __PERF_COUNTERS__ = calloc (sizeof (thread_perf_counter), __PERF_COUNTERS_CAP__ * 2);
	    memcpy (__PERF_COUNTERS__, aux, sizeof (thread_perf_counter) * __PERF_COUNTERS_LEN__);
	    __PERF_COUNTERS_CAP__ *= 2;
	}
    
	__PERF_COUNTERS__[__PERF_COUNTERS_LEN__].pid = pid;
	__PERF_COUNTERS__[__PERF_COUNTERS_LEN__].counters = calloc (sizeof (perf_counter_array), 1);
	
	ret = __PERF_COUNTERS__[__PERF_COUNTERS_LEN__].counters;	
	__PERF_COUNTERS_LEN__ += 1;
    }
    
    pthread_mutex_unlock(&mutex);
    return ret;
}


void print_perf_counters () {
    pthread_mutex_lock (&mutex);
    
    for (uint64_t i = 0 ; i < __PERF_COUNTERS_LEN__ ; i++) {
	printf ("PERFORMANCE OF PID : %-15ld \n", __PERF_COUNTERS__[i].pid);
	perf_counter_array * perfs = __PERF_COUNTERS__[i].counters;
	
	printf ("%-15s %-15ld\n", "MOVI", perfs-> mov.i);
	printf ("%-15s %-15ld\n", "MOVL", perfs-> mov.l);
	printf ("%-15s %-15ld\n", "MOVF", perfs-> mov.f);
	printf ("%-15s %-15ld\n", "MOVD", perfs-> mov.d);

	printf ("%-15s %-15ld\n", "CMOVI", perfs-> cmov.i);
	printf ("%-15s %-15ld\n", "CMOVL", perfs-> cmov.l);
	printf ("%-15s %-15ld\n", "CMOVF", perfs-> cmov.f);
	printf ("%-15s %-15ld\n", "CMOVD", perfs-> cmov.d);

	printf ("%-15s %-15ld\n", "MOVRRI", perfs-> movrr.i);
	printf ("%-15s %-15ld\n", "MOVRRL", perfs-> movrr.l);
	printf ("%-15s %-15ld\n", "MOVRRF", perfs-> movrr.f);
	printf ("%-15s %-15ld\n", "MOVRRD", perfs-> movrr.d);

	printf ("%-15s %-15ld\n", "ADDI", perfs-> add.i);
	printf ("%-15s %-15ld\n", "ADDL", perfs-> add.l);
	printf ("%-15s %-15ld\n", "ADDF", perfs-> add.f);
	printf ("%-15s %-15ld\n", "ADDD", perfs-> add.d);
	
	printf ("%-15s %-15ld\n", "SUBI", perfs-> sub.i);
	printf ("%-15s %-15ld\n", "SUBL", perfs-> sub.l);
	printf ("%-15s %-15ld\n", "SUBF", perfs-> sub.f);
	printf ("%-15s %-15ld\n", "SUBD", perfs-> sub.d);

	printf ("%-15s %-15ld\n", "MULI", perfs-> mul.i);
	printf ("%-15s %-15ld\n", "MULL", perfs-> mul.l);
	printf ("%-15s %-15ld\n", "MULF", perfs-> mul.f);
	printf ("%-15s %-15ld\n", "MULD", perfs-> mul.d);

	printf ("%-15s %-15ld\n", "DIVI", perfs-> div.i);
	printf ("%-15s %-15ld\n", "DIVL", perfs-> div.l);
	printf ("%-15s %-15ld\n", "DIVF", perfs-> div.f);
	printf ("%-15s %-15ld\n", "DIVD", perfs-> div.d);

	printf ("%-15s %-15ld\n", "LEA", perfs-> lea);
	printf ("%-15s %-15ld\n", "CALL", perfs-> call);
	printf ("%-15s %-15ld\n", "RET", perfs-> ret);
	printf ("%-15s %-15ld\n", "JMP", perfs-> jmp);
	printf ("%-15s %-15ld\n", "LJMP", perfs-> ljmp);
	printf ("%-15s %-15ld\n", "CJMP", perfs-> cjmp);
	
	printf ("%-15s %-15ld\n", "CVTSI2SDQ", perfs-> cvtsi2sdq);
	printf ("%-15s %-15ld\n", "CVTSD2SIQ", perfs-> cvtsd2siq);
	
	printf ("%-15s %-15ld\n", "CVTSS2SIL", perfs-> cvtss2sil);
	printf ("%-15s %-15ld\n", "CVTSI2SSL", perfs-> cvtsi2ssl);
    }
    
    pthread_mutex_unlock(&mutex);
}


void dump_perf_counters (const char * prefix) {
    pthread_mutex_lock (&mutex);

    char buf [255];
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    uint64_t len = snprintf(buf, 255, "%s_%d-%02d-%02d_%02d:%02d:%02d.perfs", prefix, tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
    if (len == 255) len = 254;
    buf[len] = 0;

    printf ("FILE : %s\n", buf);
    
    FILE * file = fopen (buf, "a");    
    if (file == NULL) {
	fprintf (stderr, "Failed to dump to file %s\n", buf);
	pthread_mutex_unlock(&mutex);
	
	return;
    }
    
    for (uint64_t i = 0 ; i < __PERF_COUNTERS_LEN__ ; i++) {
	fprintf (file, "PERFORMANCE OF PID : %-15ld \n", __PERF_COUNTERS__[i].pid);
	perf_counter_array * perfs = __PERF_COUNTERS__[i].counters;
	
	fprintf (file, "%-15s %-15ld\n", "MOVI", perfs-> mov.i);
	fprintf (file, "%-15s %-15ld\n", "MOVL", perfs-> mov.l);
	fprintf (file, "%-15s %-15ld\n", "MOVF", perfs-> mov.f);
	fprintf (file, "%-15s %-15ld\n", "MOVD", perfs-> mov.d);

	fprintf (file, "%-15s %-15ld\n", "CMOVI", perfs-> cmov.i);
	fprintf (file, "%-15s %-15ld\n", "CMOVL", perfs-> cmov.l);
	fprintf (file, "%-15s %-15ld\n", "CMOVF", perfs-> cmov.f);
	fprintf (file, "%-15s %-15ld\n", "CMOVD", perfs-> cmov.d);

	fprintf (file, "%-15s %-15ld\n", "MOVRRI", perfs-> movrr.i);
	fprintf (file, "%-15s %-15ld\n", "MOVRRL", perfs-> movrr.l);
	fprintf (file, "%-15s %-15ld\n", "MOVRRF", perfs-> movrr.f);
	fprintf (file, "%-15s %-15ld\n", "MOVRRD", perfs-> movrr.d);

	fprintf (file, "%-15s %-15ld\n", "ADDI", perfs-> add.i);
	fprintf (file, "%-15s %-15ld\n", "ADDL", perfs-> add.l);
	fprintf (file, "%-15s %-15ld\n", "ADDF", perfs-> add.f);
	fprintf (file, "%-15s %-15ld\n", "ADDD", perfs-> add.d);
	
	fprintf (file, "%-15s %-15ld\n", "SUBI", perfs-> sub.i);
	fprintf (file, "%-15s %-15ld\n", "SUBL", perfs-> sub.l);
	fprintf (file, "%-15s %-15ld\n", "SUBF", perfs-> sub.f);
	fprintf (file, "%-15s %-15ld\n", "SUBD", perfs-> sub.d);

	fprintf (file, "%-15s %-15ld\n", "MULI", perfs-> mul.i);
	fprintf (file, "%-15s %-15ld\n", "MULL", perfs-> mul.l);
	fprintf (file, "%-15s %-15ld\n", "MULF", perfs-> mul.f);
	fprintf (file, "%-15s %-15ld\n", "MULD", perfs-> mul.d);

	fprintf (file, "%-15s %-15ld\n", "DIVI", perfs-> div.i);
	fprintf (file, "%-15s %-15ld\n", "DIVL", perfs-> div.l);
	fprintf (file, "%-15s %-15ld\n", "DIVF", perfs-> div.f);
	fprintf (file, "%-15s %-15ld\n", "DIVD", perfs-> div.d);

	fprintf (file, "%-15s %-15ld\n", "LEA", perfs-> lea);
	fprintf (file, "%-15s %-15ld\n", "CALL", perfs-> call);
	fprintf (file, "%-15s %-15ld\n", "RET", perfs-> ret);
	fprintf (file, "%-15s %-15ld\n", "JMP", perfs-> jmp);
	fprintf (file, "%-15s %-15ld\n", "LJMP", perfs-> ljmp);
	fprintf (file, "%-15s %-15ld\n", "CJMP", perfs-> cjmp);
	
	fprintf (file, "%-15s %-15ld\n", "CVTSI2SDQ", perfs-> cvtsi2sdq);
	fprintf (file, "%-15s %-15ld\n", "CVTSD2SIQ", perfs-> cvtsd2siq);
	
	fprintf (file, "%-15s %-15ld\n", "CVTSS2SIL", perfs-> cvtss2sil);
	fprintf (file, "%-15s %-15ld\n", "CVTSI2SSL", perfs-> cvtsi2ssl);
    }

    fclose (file);    
    pthread_mutex_unlock(&mutex);
}


void terminate_perf_counters () {
    pthread_mutex_lock (&mutex);
    for (uint64_t i = 0 ; i < __PERF_COUNTERS_LEN__ ; i++) {
	free (__PERF_COUNTERS__[i].counters);	
    }

    free (__PERF_COUNTERS__);
    __PERF_COUNTERS_LEN__ = 0;
    __PERF_COUNTERS_CAP__ = 0;
    
    pthread_mutex_unlock (&mutex);
}



