# var=$ # output: var is $
# var=$$ # output: var is 344456, $$ has a special meaning in the shell
# var=\$ # output: var is $

# the backslash put at the end of a line allows you continue your command on the next line
# var=$\ # output: ./test.sh: line 5: its: command not found
 
# $1 has a special meaning in the shell
# var=$1 # output: var is

# $a is treated as a variable to the shell, but there's no variable named a defined,
# so a is empty then var is also empty too
# var=$a # output: var is

# the $(...) syntax is used to execute a command and assign its output to a variable 
# b=123
# var=$($b) # output: ./test.sh: line 16: b: command not found

# var=$(echo 123) # output: var is 123

echo var is $var

