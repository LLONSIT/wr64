#include "stdio.h"
#include "stdlib.h"


void write_characters(FILE *__stream, int value) {
   if (value-- > 0) {
        do {
            fputc(0xFF, __stream);
        } while (value-- > 0);
    }
}

//TODO: maybe a for loop?

// Write in to the specified files
int get_files(FILE *__stream, FILE *__stream1) {

    int total;
    int value;

    value = 0;
    total = fgetc(__stream);

    if (total != -1) {
        do {
            fputc(total, __stream);
            value += 1;
            total = fgetc(__stream1);
        } while (total != -1);
    }
    return value;
}


int main(int argc, char *argv[]) {
    int total;
    FILE *__stream; // first_file
    FILE *__stream1; // second_file

	/* Program Init */
    if (argc != 3) {
        fprintf(stderr, "copymask  ROM_file  MASK_file\n");
        exit(1);
    }

/*********************************************

	opening files provided by the argv

*********************************************/

    argv++; //increment

    __stream = fopen(*argv,"r");
    if (__stream == 0) {
        perror(*argv);
        exit(1);
    }

    argv++; //increment

    __stream1 = fopen(*argv,"w");
    if (__stream1 == 0) {
        perror(*argv);
        exit(1);
    }

    //Getting the files and writting!
    total = get_files(__stream, __stream1);
    if (total < 0x120000) {
        write_characters(__stream1, 0x120000 - total);
    }

    fclose(__stream);
    fclose(__stream1);
    return 0;
}
