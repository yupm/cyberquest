create_user() {
    adduser --disabled-password --gecos "" grunt4
    echo "grunt4:{SPEED_OF_LIGHT}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme4 /home/grunt4/readme
}

scene1() {
    # hidden file + somewhere in file system + owned by user and group grunt4 + size of file

    create_user
    create_scene
    sudo mkdir /etc/isThisIt
    sudo cp /shared/dataGrunt4.txt /etc/isThisIt/imhere
    sudo chown grunt4:grunt4 /etc/isThisIt/imhere
    sudo chown grunt4:grunt4 /etc/isThisIt/imhere
    sudo chmod 555 /etc/isThisIt/imhere
    sudo chmod 555 /etc/isThisIt

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 4 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
