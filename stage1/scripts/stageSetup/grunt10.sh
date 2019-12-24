create_user() {
    adduser --disabled-password --gecos "" grunt10
    echo "grunt10:{TRAIL_OF_FAILURE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme10 /home/grunt10/readme
}

scene1() {
    create_user
    create_scene
    sudo mkdir /var/www/html/grunt10/
    sudo cp -R /shared/dataGrunt10/html/* /var/www/html/grunt10/

    #sudo cp /shared/grunt9.conf /etc/apache2/sites-available/
    #sudo a2ensite grunt9.conf
    #sudo service apache2 reload
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 10 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
