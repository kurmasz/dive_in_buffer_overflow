#include<stdio.h>
#include<string.h>

typedef struct {
  char name[32];
  int salary;
  char title[32];
} Employee;

/* Not used in favor of scanf */
char* my_gets(char* str) {
  int index = 0;
  int c = getchar();
  while (c != '\n') {
    str[index] = c;
    c = getchar();
    ++index;
  }
  str[index] = 0;
  return str;
}

void update_name(Employee *emp) {
  printf("Enter the new name: ");
  scanf("%s", emp->name);
}

int main(int argc, char *argv[]) {

  Employee employees[] = {
    {"George Washington", 43615, "First President"},
    {"John Adams", 55134, "Second President"},
    {"Thomas Jefferson", 61143, "Third President"} 
  };

  printf("Employee #1 before:\n");
  printf("   Name:   %s\n", employees[1].name);
  printf("   Salary: %d (%x)\n", employees[1].salary, employees[1].salary);
  printf("   Title:  %s\n", employees[1].title);

  update_name(&employees[1]);

  printf("Employee #1 after:\n");
  printf("   Name:   %s\n", employees[1].name);
  printf("   Salary: %d (%x)\n", employees[1].salary, employees[1].salary);
  printf("   Title:  %s\n", employees[1].title);
  
  return 0;
}


