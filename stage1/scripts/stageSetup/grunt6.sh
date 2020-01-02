create_user() {
    adduser --disabled-password --gecos "" grunt6
    echo "grunt6:{ITS_A_SNORLAX}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme6 /home/grunt6/readme
}


scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene
    # touch -- "/home/grunt1/-Jessie was here"
    # echo "JessieandJames" > "/home/grunt1/-Jessie was here"
    cp /shared/dataGrunt6.txt /home/grunt6/wobbuffet.txt
    chown grunt6:grunt6 /home/grunt6/wobbuffet.txt
    chmod 775 /home/grunt6/wobbuffet.txt
     
    echo "[$(date +%H:%M:%S)]: Stage 6 Scenario 1 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
