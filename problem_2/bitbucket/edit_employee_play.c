#include <stdio.h>
#include <string.h>

typedef struct
{
    char name[32];
    int salary;
    char title[32];
} Employee;

// Get the next int and discard the remaining
// characters on the line (e.g., the \n)
int next_int()
{
    int ipt;
    scanf("%d", &ipt);
    while (getchar() != '\n')
        ;
    return ipt;
    }

void my_strncpy(char* dest, char* src, int n) {

    for (int i = 0; i < n; ++i) {
      /* printf("%d %c\n", i, src[i]);*/
        dest[i] = src[i];
        if (src[i] == '\0') {
            break;
        }
    }
}

// Get the next line of text
// _without_ the trailing newline.
void next_line(char *target, int n)
{
    static char buffer[1024];
    fgets(buffer, 1024, stdin);
    int last = strlen(buffer) - 1;
    if (buffer[last] == '\n')
    {
        buffer[last] = '\0';
    }
    my_strncpy(target, buffer, n);
}

void edit_name(Employee *emp)
{
    printf("Enter the new name: ");
    next_line(emp->name, 32);
}

void edit_title(Employee *emp)
{
    printf("Enter the new title: ");
    next_line(emp->title, 32);
}

void edit_salary(Employee *emp)
{
    printf("Enter the new salary: ");
    scanf("%d", &emp->salary);
}

void edit_employees(int can_edit_salary, Employee *employees)
{
    char message1[8] = "ABCDEFG";  /* "Dummy" data */
    int emp_num = 0;
    Employee* emp = NULL;
    int choice = -1;
    char message2[8] = "abcdefg"; /* "Dummy" data */

    printf(" m1: %p %ld\n", (void*)message1, (void*)message1 - (void*)employees);
        printf(" m2: %p %ld\n", (void*)message2, (void*)message2 - (void*)employees);
    
    printf("e-1: %p %ld\n", (void*)&(employees[-1]), (void*)&(employees[-1]) - (void*)employees);
    printf("can: %p %ld\n", (void*)&can_edit_salary, (void*)&can_edit_salary - (void*)employees);
printf("e2t: %p %ld\n", (void*)&(employees[-2].title), (void*)&(employees[-2].title) - (void*)employees);
printf("e-2: %p %ld\n", (void*)&(employees[-2]), (void*)&(employees[-2]) - (void*)employees);
    printf("Enter number of employee to edit (or 999 to exit): ");
    emp_num = next_int();
    while (emp_num != 999)
    {
        emp = &employees[emp_num];

        printf("Current employee: \n");
        printf("   Name:   %s\n", emp->name);
        printf("   Title:  %s\n", emp->title);
        printf("   Salary: %d\n", emp->salary);

        printf("What do you want to edit?\n");
        printf("   (1) Name\n");
        printf("   (2) Title\n");
        if (can_edit_salary >= 1)
        {
            printf("   (3) Salary\n");
        }
        choice = next_int();  /* Set breakpoint here */

        switch (choice)
        {
        case 1:
            edit_name(emp);
            break;
        case 2:
            edit_title(emp);
            break;
        case 3:
            edit_salary(emp);
            break;
        }

        printf("Updated employee: \n");
        printf("   Name:   %s\n", emp->name);
        printf("   Title:  %s\n", emp->title);
        printf("   Salary: %d\n", emp->salary);

        printf("Message 1: =>%s<=\n", message1);
        printf("Can edit salary: %d\n", can_edit_salary);
	printf("Choice: %d\n", choice);
        printf("Message 2: =>%s<=\n", message2);

        printf("Enter number of employee to edit (or 999 to exit): ");
        emp_num = next_int();
    } // end while
}

int main(int argc, char *argv[])
{
    Employee employees[] = {
        {"George Washington", 43615, "First President"},
        {"John Adams", 55134, "Second President"},
        {"Thomas Jefferson", 61143, "Third President"}};


    printf("emp: %p\n", (void*)employees);
    printf("arc: %p\n", (void*)&argc);
    printf("arv: %p\n", (void*)&argv);
    edit_employees(0, employees);
    printf("Good-bye.\n");
    return 0;
}
