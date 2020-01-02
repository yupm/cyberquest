create_user() {
    adduser --disabled-password --gecos "" grunt11
    echo "grunt11:{IM_BROCK_LEE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme11 /home/grunt11/readme
}

scene1() {
    #Please change the URL of readme11 according to your website
    #Use the cookie to find the password

    create_user
    create_scene
    service apache2 start
    mkdir /var/www/html/grunt11
    cp -R /shared/dataGrunt11/html/* /var/www/html/grunt11/

    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 11 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
