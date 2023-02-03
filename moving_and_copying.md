# Ideas for moving and copying files and directories

## Using `rsync` to transfer files from list of files

~~~
rsync -v --files-from=list_of_files.txt path_to_source/ path_to_destination/
~~~
