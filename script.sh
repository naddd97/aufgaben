

echo "Bitte gebe den Pfad ein:"

read -r pfad




if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    pfad="${pfad//\\/\/}" # Slash umwandelen
    datein=$(ls "$pfad")
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    datein=$(ls "$pfad")

fi

echo -e "\n$datein"
