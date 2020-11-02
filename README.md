# bash_scripting_shell_programming

## Shell Scripting in a Nutshell

script.sh

```sh
#!/bin/bash
echo "Scripting is fun!"
```

```sh
chmod 755 script.sh
./script.sh
```

### Analyze running script

```sh
#!/bin/bash
sleep 90
```

```sh
./sleepy.sh &
ps -fp <<pid>>
ps -ef | grep <<pid>> | grep -v grep
```

### Variables

```sh
VARIABLE_NAME="Value"
```

```sh
#!/bin/bash
MY_SHELL="bash"
SERVER_NAME=$(hostname)
# older syntax
# SERVER_NAME=`hostname`
echo "I like the $MY_SHELL shell."
echo "I am ${MY_SHELL}ing on my keyboard."
echo "You are running this script on $SERVER_NAME"
```

### Tests

```sh
# Syntax
[ condition-for-test ]
# Example
[ -e /etc/passwd ]
```

```sh
if [ condition-is-true ]
then
  command 1
  command 2
  command N
elif [ condition-is-true ]
  command N
else
  command N
fi
```

```sh
#!/bin/bash
MY_SHELL="zsh"

if [ "$MY_SHELL" = "bash" ]
then
  echo "You seem to like bash shell"
elif [ "$MY_SHEEL" = "csh" ]
then
  echo "You seem to like csh shell"
else
  echo "You don't seem to like bash or shell"
fi
```

### Loops

```sh
for VARIABLE_NAME in ITEM_1 ITEM_N
do
  command 1
  command 2
  command N
done
```

```sh
#!/bin/bash
PICTURES=$(ls *jpg)
DATE=$(date +%F)

for PICTURE in $PICTURES
do
  echo "Renaming ${PICTURE} to ${DATE}-${PICTURE}"
  mv ${PICTURE} ${DATE}-${PICTURE}
done
```

```sh
#!/bin/bash
COLORS="red green blue"
for COLOR in $COLORS
# for COLOR in red green blue
do
  echo "COLOR: $COLOR"
done
```

### Positional Parameters

```sh
./script.sh parameter1 parameter2 parameter3
```

$0:"script.sh"
$1:"parameter1"
$2:"parameter2"
$3:"parameter3"

```sh
#!/bin/bash
# USER=$1 # The first parameter is the user

echo "Executing script: $0"

for USER in $@
do
  echo "Archiving user: $USER"

  # Lock the account
  passwd -l $USER

  # Create an archive of the home directory
  tar cf /tmp/${USER}.tar.gz /home/${USER}
done
```

### Accepting User Input (STDIN)

```sh
read -p "PROMPT" VARABLE
```

```sh
#!/bin/bash

read -p "Enter a user name: " USER
echo "Archiving user: $USER"

# Lock the account
passwd -l $USER

# Create an archive of the home directory
tar cf /tmp/${USER}.tar.gz /home/${USER}
```

## Return Codes and Exit Statuses

- Every time a command is executed, it returns an exit status from 0 to 255
- An exit status of 0 means OK by convention, any other is treated as an error condition

```sh
ls /not/here
echo "$?" # outputs 2
```

```sh
#!/bin/bash
HOST="google.com"

ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -eq "0" ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi
```

### && (AND) and || (OR)

```sh
# cp command will run only if mkdir command is successful
mkdir /tmp/bak && cp test.txt /tmp/bak/

# if the first command fails the second command will execute
cp test.txt /tmp/bak || cp test.txt /tmp/
```

```sh
#!/bin/bash
HOST="google.com"

ping -c 1 $HOST && echo "$HOST reachable"
ping -c 1 $HOST || echo "$HOST unreachable"
```

### The semicolon (;)

- Separate commands with a semicolon to ensure all commands are executed regardless of the exit status

```sh
cp test.txt /tmp/bak/ ; cp test.txt /tmp

# Same as
cp test.txt /tmp/bak/
cp test.txt /tmp
```

### Exit command

- Explicitly define the return code
- The default value is that of the last command executed

```sh
exit 0
exit 1
exit n
```

```sh
#!/bin/bash
HOST="google.com"

ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
  echo "$HOST unreachable"
  exit 1
fi
exit 0
```
