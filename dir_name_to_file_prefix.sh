# This script is to use the directory name to rename all the files inside it using the directory name as prefix
# Locate in the parent directory of the directories that have the files whose names you will change.
# Usage: sh <path_to_script/>dir_name_to_file_prefix.sh

ls | while read dir #use directory names in loop
do
  cd $dir #go inside each directory
  ls | while read file #use directory file names in loop
  do
    pwd
    echo "mv" $file ${dir}_$file #show command
    mv $file ${dir}_$file #rename file with dir_file
  done
  cd .. #exit te directory to go to the next one
done
