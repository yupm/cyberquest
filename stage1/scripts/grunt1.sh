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
    cd /home/grunt1/
    touch -- "-Jessie was here"
    echo "Hi Jessie was here, you won't get us if you don't makeitdouble"

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"


}

scene1
exit 0