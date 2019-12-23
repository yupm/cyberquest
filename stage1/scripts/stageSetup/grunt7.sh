create_user() {
    adduser --disabled-password --gecos "" grunt6
    echo "grunt7:{OH_THANKS_MEOWTH}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme7 /home/grunt7/readme
}


scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene

    echo "[$(date +%H:%M:%S)]: Stage 6 Scenario 1 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0