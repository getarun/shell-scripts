 sudo apt-get install fdupes
 fdupes -r -n -S /directory | sed -r “s/^/#rm \”/” | sed -r “s/$/\”/” >duplicate-files.sh
