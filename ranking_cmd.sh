#!bin/bash

histfile="$HOME/.bash_history"
if [ -f "$histfile" ]; then
cmdrank=$(awk '{print $1}' "$histfile" | sort | uniq -c | sort -nr | head -n 5)

echo "Mis 4 comandos mas utilizados:"
echo "$cmdrank"

else

echo "No logro encontrar el bash_history"

fi
