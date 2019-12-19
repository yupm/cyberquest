create_user() {

    adduser grunt1
    echo "grunt1:makeitdouble" | sudo chpasswd

}

create_scene() {

    cp /shared/readme1 /home/grunt1/readme


}

scene1() {

    create_user
    create_scene

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"


}

scene1
exit 0