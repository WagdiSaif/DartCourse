

#include"info_.h"
#include<stdio.h>
#include<string.h>





int main() {
	// Struct variable declaration
	struct Person person1;
	

	// Pointer to struct
	struct Person* personPtr = &person1;

	strcpy_s(personPtr->name, sizeof(personPtr->name), "Wagdi Saif1");
	personPtr->age = 25;

	// Function call passing the struct pointer
	printPersonDetails(personPtr);



	printf("Greater number is : !\n%d", MaxNumber(23, 45));
	getchar();
	return 0;
}