# variables defined for makefile

###########################################
# m_var=$

# output:
# echo m_var is $ # a printed command before executed by the shell
# m_var is $

###########################################
# m_var=$$

# output:
# echo m_var is $
# m_var is $

###########################################
# m_var=\$
# output:
# echo m_var is \$ # a printed command before executed by the shell
# m_var is $

###########################################
# m_var=$\

# output:
# echo m_var is 
# m_var is

### cause: ###
# the backslash put at the end of a line allows you continue your command on the next line

###########################################
# m_var=$1
# output:
# echo m_var is 
# m_var is

###########################################
# m_var=$a
# output:
# echo m_var is 
# m_var is

###########################################
# 1=123
# m_var=\$145
# output:
# echo m_var is \23
# m_var is 23

### cause: ###
# the $ symbol before 1 makes makefile treats 1 as a variable
# what if we define a variable 1 and print it again, we will get an output like this:

# output:
# echo m_var is \12345
# m_var is 12345

###########################################

###########################################
# m_var=\$abc
# output:
# echo m_var is \bc
# m_var is bc
### cause: ###
# the same reason as $1
###########################################

# make sure every commands would be executed in the same shell
.ONESHELL:

m_var=1
m=123

all:	
	@# the way of how GNUmake deals with its variables
	
	@# output: m_var is 1
	echo m_var is $(m_var) 
	
	@# output: m_var is 
	@# conclusion: so confused, still have some mechanisms about how make handles the symbol $ before passing variables to the shell, but its okay for now. We will see soon if have spare time
	echo m_var is $($m_var) 
	
	m=456
	sh_var=hello
	
	@# 1. the way of how the shell(bash i guess) deals with its variables inside a makefile
	@############################################################
	@# make will handle the variables inside a makefile before the shell executes it,
	@# which means make will treat the symbol m as a variable and it will be assigned with the value 123
	@#############################################################
	echo m_var is $m_var 
	@# here we got a result like this:
	@# echo m_var is 123_var 
	@# m_var is 123_var
	@# we can see $m is replaced by 123, which was defined in the makefile variables scope early 
	
	@# 2. what if two variables have the same naming but exist in the different scopes, what gonna happen?
	@#############################################################
	@# we have two variables both named m, one is inside the scope of the shell commands, which
	@# is considered as the variable of the shell. 
	@# the other m outside of the shell commands, which is considered as the makefile's variable.
	@# makefile's variables have higher priority than the shell's variables when they both have the same naming. 
	@# why? because after printing the value of m, we get 123, its the value for the makefile's one
	@#############################################################		
	echo m is $m	 
	@# we get a result like this:
	@#echo m is 123 
	@#m is 123
	
	@# 3. here the thing turns to how to 
	echo sh_var is $$sh_var
	
	
	
