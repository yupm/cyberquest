create_user() {
    adduser --disabled-password --gecos "" grunt17
    echo "grunt17:{WE_WANT_PIKACHU}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme13 /home/grunt13/readme
}

scene1() {
    create_user
    create_scene
    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 17 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
