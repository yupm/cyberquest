create_user() {
    adduser --disabled-password --gecos "" grunt9
    echo "grunt9:{Im_ASH_KETCHUP}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme9 /home/grunt9/readme
    #Creates the ssh key
    ssh-copy-id -i /etc/grunt9/.ssh/grunt9.key.pub grunt9@localhost
}

scene1() {
    create_user
    create_scene
    sudo mkdir /var/www/html/grunt9/
    sudo cp -R /shared/dataGrunt9/html/* /var/www/html/grunt9/

    #sudo cp /shared/grunt9.conf /etc/apache2/sites-available/
    #sudo a2ensite grunt9.conf
    #sudo service apache2 reload
    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 9 has been setup correctly!"
}

# scene2(){
#     # mkdir -p /etc/grunt9/.ssh
#     # #Create key pair grunt9.key is priv
#     # ssh-keygen -t rsa -N "" -f /home/grunt9/.ssh/grunt9.key
   
# }

main() {
    scene1
}

main
exit 0
