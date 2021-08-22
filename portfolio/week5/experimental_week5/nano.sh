while read line; do

echo "$line" | grep -e /[A-Z]+\s[A-Za-z0-9]+\s{8,}[!@#$%^*?:]/

done < passwords.txt
