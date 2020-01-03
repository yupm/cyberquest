
cd /var/scripts/grunt13

for file in *.sh; do
    bash "$file" -H || break
    rm -f $file
done

