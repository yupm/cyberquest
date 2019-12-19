create_user() {

    adduser grunt0
    echo "grunt1:makeitdouble" | sudo chpasswd

}

create_scene() {

    cp /shared/readme0 /home/grunt0/readme


}

scene1() {

    create_user
    create_scene
    echo "Find Team Rocket with this password preparefortrouble" > /home/grunt0/text.txt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"


}

scene0
exit 0