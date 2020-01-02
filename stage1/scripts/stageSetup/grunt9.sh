create_user() {
    adduser --disabled-password --gecos "" grunt9
    echo "grunt9:{IM_ASH_KETCHUP}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme9 /home/grunt9/readme
    echo "{IM_ASH_KETCHUP}" > /tmp/grunt9_pass.txt
    #Creates the ssh key
    sshpass -f /tmp/grunt9_pass.txt ssh-copy-id -i /etc/grunt9/.ssh/grunt9.key.pub grunt9@localhost
    rm /tmp/grunt9_pass.txt
}

scene1() {
    create_user
    create_scene
    mkdir /var/www/html/grunt9
    cp -R /shared/dataGrunt9/html/* /var/www/html/grunt9/

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
