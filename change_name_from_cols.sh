# Usage: sh <path_to_script>/change_name_from_cols.sh <file with columns> <number of column with current names> <number of column with wanted names>
pos_old=$2
pos_new=$3

tail -n +2 $1 | while read line
do
  old=$(echo $line | cut -d',' -f $pos_old)
  new=$(echo $line | cut -d',' -f $pos_new)
  #To change directory name
  echo $old $new
done

  

  
  
