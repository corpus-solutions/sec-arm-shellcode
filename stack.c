// This is example code vulnerable to Stack Smashing

#include <stdio.h>
#include <string.h>

void func1(char *s) {
    char buffer[128];
    strcpy(buffer, s);
}

int main (int argc, char* argv[]) {
    if (argc>1) {
        func1(argv[1]);
        printf("Everything's fine.\n");
    }
}
