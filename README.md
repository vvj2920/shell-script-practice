What is #!/bin/bash ?
A)The shebang tells the terminal to use bash to execute the script
       to know default shell we use command echo $SHELL

echo ---> is a command used to print the statement 

read----->is a command used to take data from user and store it in a variable.

unset--->The unset command directs a shell to delete a variable and its stored data from list of variables

read only--->values could not be modified later in the script.

-s--means silent mode 
        eg :echo "Please enter your Password:: "
                read -s PASSWORD
                
$# ---is a special variable in Bash that returns the number of arguments passed to the script.

$0 ---holds the name of the script itself.

$@ -----is a special variable that holds all the arguments passed to the script.


 $?  ----- variable in Bash is a special variable that holds the exit status of the last command executed


 exit
 -------
 
In Bash scripting, the exit command is used to terminate a script and optionally return an exit status code. The exit status code can be used to indicate the outcome of the script or function. Specifically:

What Does exit 1 Mean?
exit 1 means:
The script is terminating with a non-zero exit status (1 in this case).
It usually indicates an error or an unsuccessful execution.

Exit Status Codes in Bash
0: Indicates success or no error.
Non-zero (1, 2, etc.`): Indicates failure or a specific error condition.
The convention is:

1: General error.
2: Misuse of built-in commands.
Other codes can be used to indicate specific types of errors, depending on the script.

Why Use &>>?
It's useful when you want to capture both the regular output and error messages from a command, particularly in scripts where you need to log the process for troubleshooting and tracking purposes.