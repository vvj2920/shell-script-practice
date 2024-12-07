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

