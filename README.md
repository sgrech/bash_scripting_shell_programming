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

### Loops

```sh
for VARIABLE_NAME in ITEM_1 ITEM_N
do
  command 1
  command 2
  command N
done
```
