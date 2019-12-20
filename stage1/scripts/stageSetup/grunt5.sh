create_user() {
    adduser --disabled-password --gecos "" grunt5
    echo "grunt5:itsMeowth" | sudo chpasswd
}

create_scene() {
    cp /shared/readme5 /home/grunt5/readme
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
