#ifndef STUDENT_H
#define STUDENT_H
#include <stdio.h>


// Struct declaration
typedef struct  {
	char* name;
	int age;
	
	char* level;
	float score;
}Student;

 Student* createStudent(const char* name, int age, const char* level, float score);
void showStudentDetails(Student* student);

void update_score( Student* student, float score);



#endif 
