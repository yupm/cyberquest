create_user() {
    adduser --disabled-password --gecos "" grunt10
    echo "grunt10:{TRAIL_OF_FAILURE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme10 /home/grunt10/readme
}

scene1() {
    #Please change the URL of readme10 according to your website
    #Password in html's code

    create_user
    create_scene
    service apache2 start
    mkdir /var/www/html/grunt10
    cp -R /shared/dataGrunt10/html/* /var/www/html/grunt10/

    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 10 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
