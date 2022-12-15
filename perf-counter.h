#ifndef __PERF_COUNTERS_H__
#define __PERF_COUNTERS_H__

#include <stdint.h>

/**
 * Count the number of instruction for a given instruction type (mov, add, mul, etc.)
 */
typedef struct perf_counter {
    // 32 bits (esi, edi, eax, ...)
    uint64_t i;

    // 64 bits (rsi, rdi, rax, ...)
    uint64_t l;

    // 32 bits float (xmm0 - xmm15, with addss, mulss, etc.)
    uint64_t f;

    // 64 bits float (xmm0 - xmm15, with addsd, mulsd, etc.)
    uint64_t d;
} perf_counter;

/**
 * List the x86_64 instruction that can be counted
 */
typedef struct perf_counter_array {

    // Move reg to stack, or stack to reg
    perf_counter mov;

    // Move reg to reg
    perf_counter movrr;

    // Conditional move (cmova, cmove, ...)
    perf_counter cmov;

    // Comparison
    perf_counter cmp;
    
    // Addition
    perf_counter add;

    // Substraction
    perf_counter sub;

    // Multiplication
    perf_counter mul;

    // Division
    perf_counter div;

    // Xor
    perf_counter xor;
    
    // Address to reg
    uint64_t lea;
    
    // long to double
    uint64_t cvtsi2sdq;

    // double to long
    uint64_t cvtsd2siq;
    
    // float to int
    uint64_t cvtss2sil;

    // int to float
    uint64_t cvtsi2ssl;

    // Call function
    uint64_t call;

    // Return function
    uint64_t ret;

    // unconditional jump
    uint64_t jmp;

    // Long jump (jump outside a frame)
    uint64_t ljmp;

    // Conditional jump (je, jleq, jgeq, etc.)
    uint64_t cjmp;

    // shr, lhr
    uint64_t shift;

    // Stack push
    uint64_t push;
    
    // not instruction
    uint64_t noti;
    
} perf_counter_array;


/* /\** */
/*  * The list of perf counters */
/*  *\/ */
/* extern perf_counter_array * __PERF_COUNTERS__; */

/**
 * Allocate the memory for the performance counters
 * @info: thread_safe
 */
void init_perf_counters ();

/**
 * @returns: the perf_counter_array associated to the current thread
 * @info: thread_safe
 * @warning: this function can be a bit heavy, don't use it often
 * @example:
 * ===
 * void foo () {
 *     perf_counter_array* cntrs = get_perf_counters ();
 *     for (int i = 0 ; i < 10000 ; i++) {
 *          // Some computation
 *          cntrs-> call += 12;
 *          cntrs-> add.i += 89;
 *     }
 * 
 *   
 * }
 * ===
 * @guarantee: 
 * the returned perf counters are valid from the start of the thread to the end of the program
 * They are never moved in memory, nor freed, so you can get them only once, and write in them as long as you want.
 * They are not allocated if you don't call this function though.
 */
perf_counter_array* get_perf_counters ();

/**
 * Print the performance counters to stdout.
 */
void print_perf_counters ();

/**
 * Dump the performance counters to a file
 * @info: the dump filename will be filename_prefix + timeofday ()
 * @info: thread_safe
 */
void dump_perf_counters (const char * filename_prefix);

/**
 * Terminate the performance counters
 * And clear the allocated memory of every threads (running or ended)
 * @info: thread_safe
 */
void terminate_perf_counters ();


#endif
