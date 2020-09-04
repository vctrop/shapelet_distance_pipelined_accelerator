// Copyright GMicro UFSM 2020.
// This source describes Open Hardware and is licensed under the CERN-OHLS v2
// You may redistribute and modify this documentation and make products
// using it under the terms of the CERN-OHL-S v2 (https:/cern.ch/cern-ohl).
// This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED
// WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY
// AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-S v2
// for applicable conditions.
// Source location: https://github.com/vctrop/shapelet_distance_hardware_accelerator
// As per CERN-OHL-S v2 section 4, should You produce hardware based on
// these sources, You must maintain the Source Location visible on any
// product you make using this documentation.


#include "shapelet_transform.h"
#include <stdio.h>
// used to set the floating point rounding mode
#include <fenv.h>  // use -lm during compilaton to link this library

void print_float_array(float * vec, size_t size){
    for(int i=0; i < size; i++)
        printf("%g ", vec[i]);
    printf("\n");
}

int main(int argc, char *argv[]){
    uint16_t k, num_ts, min_len, max_len;
    //Timeseries T[NUM_SERIES];
    Timeseries *T;
    char * infilename, *outfilename;

    // Get filenames and k from argv
    if(argc != 6){
        printf("Please use: %s {path_to_dataset} {output_basename} {min_len} {max_len} {k_best}\n", argv[0]);
        exit(-1);
    }

    infilename = argv[1];
    outfilename = argv[2];
    min_len = (uint16_t) atoi(argv[3]);
    max_len = (uint16_t) atoi(argv[4]);
    k = (uint16_t) atoi(argv[5]);
    
    if(k <= 0){
        printf("Error: k must be greater than zero\n");
        exit(-1);
    }
    
    // Load dataset and hold number of time-series loaded
    num_ts = read_train_dataset(infilename, &T);
    if (T[0].length < max_len){
        printf("Error, maximum shapelet length is greater than each time-series length");
        exit(-1);
    }
    
    // Check dataset loading
    for(unsigned int i = 0; i < num_ts; i++)
        printf("[ TS: %u]\nfirst: %g, last: %g, class: %u\n", i,  T[i].values[0], T[i].values[T[i].length - 1], T[i].class);
    
    Shapelet *k_best = malloc(k * sizeof(*k_best));

    //k_best = multi_thread_shapelet_cached_selection(T, num_ts, min_len, max_len, k, 2);
    k_best = omp_shapelet_cached_selection(T, num_ts, min_len, max_len, k);

    shapelet_set_to_files(k_best, k, T, outfilename);
    
    for (unsigned int i = 0; i < num_ts; i++){
        free(T[i].values);
    }
    free(T);
    
    free(k_best);
   
    return 0;
}