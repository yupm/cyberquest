username = $(whoami)

cd /var/$username

for f in *.sh; do
    bash "$f" -H || break/

done

sudo rm -R /var/$username/*