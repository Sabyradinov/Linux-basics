#base sh scripts
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

#base work with user & user groups
groupadd newgroupname # create new group
useradd -G newgroupname -p password newuser # create new user and add them to newgroup
groups # show all groups
users # show all users
id username # show user all groups
ls -l # show all files and permissions of user, 1 part permissions flag, 2 part user & groups, 3 part create/modified date,  4 part file name, comp use numeric identificator like 664, that mean -rw-r--r- 110 100 100, rwx - read, write,execute, if in symbol - mean file, if d - meand directory
chmod binarycode filename # command to change permissions, binarycode generates from permission flags(ex: -rw-r--r-- = 664) 
chown username:groupname filename # command to change owner of file
ls -lah # command show permissions show all file(with hidden) and h - use unit suffix(Gb, Mb etc)