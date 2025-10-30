#include "student.h"
#include <stdio.h>
#include <string.h>
#include  <stdlib.h>

// Function definition

 Student* createStudent(const char* name, int age, const char* level, float score) {

	 Student* s = (Student*)malloc(sizeof(Student));
	if (s == NULL) {
		fprintf(stderr, "memory allocation failed\n");
		return NULL;
	}
	 s->name = strdup(name);
    s->level = strdup(level);
    if (s->name == NULL || s->level == NULL) {
        fprintf(stderr, "memory allocation failed for strings\n");
        free(s->name);
        free(s->level);
        free(s);
        return NULL;
    }

    s->age = age;
    s->score = score;

    return s;
}

void showStudentDetails( Student* student) {
	  if (!student) {
        printf("Invalid student pointer\n");
        return;
    }

	printf("Name: %s\n", student->name);
	printf("Age: %d\n", student->age);
	printf("score: %.2f\n", student->score);
	printf("level: %s\n", student->level);
}


   void update_score( Student* student,float score){

	student->score = score;
	return;
 }