# Task #1 - Git + github + linux(bash)

## Problem 01


The basenmae command was used to obtain the filename without the extension. 


```
basename NAME [SUFFIX]
```
The output of the command was redirected to a textfile with the ```>```.

Using the ```mv``` command the file was renamed from a ```file_name.py``` to ```file_name.c```.

## Problem 2

Lists all the programs and asks for which one to be executed and run on a different termnial. This is achieved with the help of ```gnome-terminal extension```.

```
gnome-terminal -x ./a.out
```

## Problem 3

When this program in executed and run, it will install ROS in Ubuntu.


## Problem 4

The bash manual:

>Single Quotes
>Enclosing characters in single quotes (') preserves the literal value of each character within the quotes. A single quote may not occur between single quotes, even when preceded by a backslash. 

```
Variable = mars
echo "$Variable"

Output : mars
```
>Double Quotes
>Enclosing characters in double quotes (") preserves the literal value of all characters within the quotes, with the exception of \$, \`, \\, and, when history expansion is enabled, \!. The characters \$ and \` retain their special meaning within double quotes (see Shell Expansions). The backslash retains its special meaning only when followed by one of the following characters: \$, \`,\", \\, or newline. Within double quotes, backslashes that are followed by one of these characters are removed. Backslashes preceding characters without a special meaning are left unmodified. A double quote may be quoted within double quotes by preceding it with a backslash. If enabled, history expansion will be performed unless an \! appearing in double quotes is escaped using a backslash. The backslash preceding the ! is not removed.

```
Variable = mars
echo '$Variable'

Output : $Variable
```


## Problem 5

```
rovername = vajra
```
This variable definition creates a variable named rovername and assigns "vajra" to it. This type of variable is called shell variable.

```
export rovername = vajra
```
This variable defination with the _export_ command which is another type of defining a variable called a **Enviornment variable**, creates a variable named rovername and assigns "vajra" to it marks it for export to all child processes created from the shell.

## Problem 6

Finds the files containing ```3.14159``` and lists it down along with its path using thing ```grep``` command.

```
grep [options] pattern [files]
```

## Challenge 1

Finds the truth table for ```(A∧B)∨(C∧D)```

```
vishnu@LAPTOP-IKSL6TII:~/mars_task_01$ bash truth_table.bash
A B C D
0 0 0 0 truth value:0
0 0 0 1 truth value:0
0 0 1 0 truth value:0
0 0 1 1 truth value:0
0 1 0 0 truth value:0
0 1 0 1 truth value:0
0 1 1 0 truth value:0
0 1 1 1 truth value:0
1 0 0 0 truth value:0
1 0 0 1 truth value:0
1 0 1 0 truth value:0
1 0 1 1 truth value:0
1 1 0 0 truth value:1
1 1 0 1 truth value:1
1 1 1 0 truth value:1
1 1 1 1 truth value:1
```

## Challenge 2

A random password generator.

The ```$RANDOM``` produces a random number which is piped into the md5sum to get a random string.

```
echo $RANDOM | md5sum | head -c 12; echo;
```
Using the kernel UUID generator to get a unique hexadecimal value that can convert to a random string.
```
cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 12; echo;
```
A uramdom file located in /dev provides an interface to access the kernal ramdom number generator. Pipe the output to ```tr``` to generate alphanumeric values then ```fold``` the charcters to how much ever long desired.
```
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1
```
You can also use the base64 utility to generate a random string.
```
echo $RANDOM | base64 | head -c 12; echo
```
OpenSSL rand command allows you to generate random bytes based on the type specified.

The two types include: 
    base63
```
openssl rand -base64 21
```
Hex values
```
openssl rand -base64 21
```
