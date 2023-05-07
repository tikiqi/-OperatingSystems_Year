list_files()
{
    ls -l #lists everything
} #end list_files()

free_disk_space()
{
    df -h #human-readable file
} #end free_disk_space()

system_path()
{
    echo $PATH
} #end system_path()

command_history()
{
    history 
} #end command_history()

backup_files()
{
    read -p "Enter the name of a directory to backup: " system_directory
    backup_directory="BackupFolder"
    
    echo "Backing up files from '$system_directory' to 'backup_directory"
    cp -R "$system_directory" "$backup_directory" #double quotes clears the buffer
    echo "Backup complete."
    echo "Listing contenets of $backup_directory"
    ls -la $backup_directory #la will list specifily the var $backup_directory
    read -p "Press Enter bar to continue"
} #end backup_files()

exit_system()
{
    exit 0
} #end exit()

while true; do
    echo "* Bash Commands *"
    read -p "Enter 1-6:
1.	List files
2.	Show free disk space
3.	Show system path
4.	Display command history
5.	Backup files
6.	Exit
        " MENU

case $MENU in

    1) list_files ;;
    2)  free_disk_space ;;
    3)  system_path ;;
    4)  command_history ;;
    5)  backup_files ;;
    6)  exit_system ;;

    *) echo "Not in the menu. Try again" ;;

esac

done

# read -p 'username' user
#     echo "username : $user"
