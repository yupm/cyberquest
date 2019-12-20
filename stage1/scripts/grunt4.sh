create_user() {

    adduser --disabled-password --gecos "" grunt4
    echo "grunt4:speedOfLight" | sudo chpasswd

}

create_scene() {

    cp /shared/readme4 /home/grunt2/readme


}

scene1() {

    create_user
    create_scene

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 2 has been setup correctly!"


}

main() {

scene1

}

main
exit 0