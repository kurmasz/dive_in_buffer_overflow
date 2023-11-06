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

void my_strncpy(char *dest, char *src, int n)
{

    for (int i = 0; i < n; ++i)
    {
        dest[i] = src[i];
        if (src[i] == '\0')
        {
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

void edit_employees(int can_edit_record, int can_edit_salary, Employee *employees)
{
  /* The unusual initialization values is just to help students see where
     on the stack the compiler places the variables */
    int emp_num = -3;
    Employee *emp = NULL;
    int both_permissions = -2;
    int choice = -1;
    both_permissions = can_edit_record && can_edit_salary;
    
    printf("Enter number of employee to edit (or 999 to exit): ");
    emp_num = next_int();
    while (emp_num != 999)
    {
        emp = &employees[emp_num];

        printf("Current employee: \n");
        printf("   Name:   %s\n", emp->name);
        printf("   Title:  %s\n", emp->title);
        printf("   Salary: %d\n", emp->salary);

	/* Printing these pointers will show what part of the "employee" 
           must be edited. HOWEVER: Adding thesse lines changes the
           amount of unused space between main and edit_employees on the stack.
	   Also, when these lines are commented out, edit_employees doesn't appear
	   to have a canary, but it does when these lines are included. 
	 */

	/*
        printf("   employee: %p\n", emp);
	printf("     target: %p  (%ld)\n", (void *)&both_permissions,
	       (void *)&both_permissions - (void*)emp);
	*/

        while (1)
        {
            printf("What do you want to edit?\n");
            printf("   (1) Name\n");
            printf("   (2) Title\n");
            if (both_permissions)
            {
                printf("   (3) Salary\n");
            }
            choice = next_int();
            if ((choice >= 1 && choice <= 2) || (choice == 3 && both_permissions))
            {
                break;
            }
        }

        switch (choice) /* Set breakpoint here */
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

        printf("Can edit salary: %d (0x%x)\n", both_permissions, both_permissions);

        printf("Enter number of employee to edit (or 999 to exit): ");
        emp_num = next_int();
    } // end while
}

int main(int argc, char *argv[])
{
  //  printf("ARGV: %p\n", &argv);
  Employee employees[] = {
        {"George Washington", 43615, "First President"},
        {"John Adams", 55134, "Second President"},
        {"Thomas Jefferson", 61143, "Third President"}};
    edit_employees(1, 0, employees);
    // printf("Good-bye.\n");
    return 0;
}
