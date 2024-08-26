#include "info_.h"
#include <stdio.h>


// Function definition
void printPersonDetails(const struct Person* person) {

	printf("Name: %s\n", person->name);
	printf("Age: %d\n", person->age);
}
int MaxNumber(int x, int y) {

	if (x > y) return x;
	else
	{
		return y;
	}
}