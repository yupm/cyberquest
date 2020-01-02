create_user() {
    adduser --disabled-password --gecos "" grunt4
    echo "grunt4:{SPEED_0F_LIGHT}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme4 /home/grunt4/readme
}

scene1() {
    # hidden file + somewhere in file system + owned by user grunt4 + size of file

    create_user
    create_scene
    sudo mkdir /tmp/isThisIt
    sudo cp /shared/dataGrunt4.txt /tmp/isThisIt/.imhere
    sudo chown grunt4 /tmp/isThisIt/.imhere
    sudo chown grunt4 /tmp/isThisIt
    sudo chmod 774 /tmp/isThisIt/.imhere
    sudo chmod 774 /tmp/isThisIt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 4 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
