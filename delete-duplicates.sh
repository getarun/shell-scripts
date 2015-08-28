 #/bin/bash
 sudo apt-get install fdupes
 ### https://github.com/adrianlopezroche/fdupes
 fdupes -r -n -S /directory | sed -r “s/^/#rm \”/” | sed -r “s/$/\”/” >duplicate-files.sh
