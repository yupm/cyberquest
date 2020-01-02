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
    sudo apt install apache2
    sudo service apache2 start
    sudo mkdir /var/www/html/grunt11
    sudo cp -R /shared/dataGrunt11/html/* /var/www/html/grunt11/
    sudo service apache2 restart
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 11 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
