create_user() {
    adduser --disabled-password --gecos "" grunt18
    echo "grunt18:{UNOVA_SINNOH_ALOLA}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme18 /home/grunt18/readme
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
