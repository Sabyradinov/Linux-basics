# base sh scripts
man command # get manual about sh commamand

# base work with file/folder
echo $0 # check sh ide
pwd # show me working directory
cd /foldername # change directory `..` go to parent folder, `-` go to previous folder
mkdir # create new folder
ls # show file list
touch # create empty file
mv "file name" "new name|new place" # rename or replace file, with `-r` move folder
cp "new file name" "source of copy" # create copy of file, with `-r` copy folder
rm "file name" # remove file, with `-r` remove folder
echo "text" > "file name" # rewrite text in file
echo "text" >> "file name" # add text to file
echo $PATH # show system folders path
cat "file name" # write file text to stdout

# base work with user & user groups
groupadd newgroupname # create new group
useradd -G newgroupname -p password newuser # create new user and add them to newgroup
groups # show all groups
users # show all users
id username # show user all groups
ls -l # show all files and permissions of user, 1 part permissions flag, 2 part user & groups, 3 part create/modified date,  4 part file name, comp use numeric identificator like 664, that mean -rw-r--r- 110 100 100, rwx - read, write,execute, if in symbol - mean file, if d - meand directory
chmod binarycode filename # command to change permissions, binarycode generates from permission flags(ex: -rw-r--r-- = 664) 
chown username:groupname filename # command to change owner of file
ls -lah # command show permissions show all file(with hidden) and h - use unit suffix(Gb, Mb etc)

# advanced commands
COLUMN=1 ls # show data with some column number
MY_VAR='HI1' # to get var we can use: "$MY_VAR", $MY_VAR, ${MY_VAR}, with `readonly` make var only readable
env # command to get all system variables
"IF cases" "IF [conditions]; then operations else other opertations" s1=s2, s1!=s2, s1 -eq s2, s1 -ne s2 # for algebric conditions use -eq or -ne, additional flags: -a = AND, -o = OR, ! = NOT
"SPECIFIC IF" [-f filepath], [-d folderpath], [-n string], [-z string] # -f check file exits, -f check folder exits, -n isNotEmpty string, -z isEmpty, -le less then, -ge greater then
test "$MY_VAR" -eq 1 \ && echo 'MY_VAR is 1' \ || echo 'MY_VAR is not 1' # command test to write little commands
shebang #!/usr/bin/env sh # shebang in file is metainformation about how to run script in file
while [conditions]; do operations done # command to create loop with while
for item in {ARRAY}; do operations done # command to create loop with for
while read -r line; do operations done < filename # command to read from file by row
MY_ARRAY=(1 2 3);echo ${#MY_ARRAY[*]} # command to get length from
my_func() {operations} # command to create function, use `local` create local vars
my_func() {local user="${1:root}"} # $1 - in argument, with `:` declare default value, $* - get all arguments as string, $@ - get all argument as array
$? # command to check status code of func or operation; in func use `return` to output status; 0 - success, 1 - failure, other - can output data
$(func arg) # command to get subshell
sh filename.sh # to run sh file
source filename.sh or . filename.sh # to run and export func/var/etc, to export var use `export $MY_VAR` command
sudo command # run command with admin privilege
ps aux # command to check all process status
kill -signalId processId # command to send signal to process
killall processName # command to shutdown process

# work with text
cat filename # get text of file
grep subtext filename # search subtext from file
find . -name filename # search file by name; with `-type f` search only files, with `-type d` search directory
find . -name 'subfilename*' # search file by part of name
# pipes
ps aux | grep zsh # pipes `|` can be usefull to add commands after commands results
ps aux | grep zsh | xargs echo "result: $1" # xargs usefull to get result as arguments
find . -name '*sh' -type f | sort -n | xargs wc # search file by name, sort by name, and show size
# set
set -e; set -x; etc # command `set` helps with running scripts; `-e` fail if error ocure, `-x` show running command, `-o nounset` error when not found, `-o pipefail` error when pipes fails
# file links
ln filename linkname # command to create file link; with flag `-s` create syn link
# linter
shellcheck # linter to check error and styles of sh