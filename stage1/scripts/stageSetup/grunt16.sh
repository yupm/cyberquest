create_user() {
    adduser --disabled-password --gecos "" grunt16
    echo "grunt16:{ITS_MY_DESTINY}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme16 /home/grunt16/readme

    cp /shared/dataGrunt16.txt /home/grunt16/pika-is-here.txt

    echo 'echo -e "\\nPika Pi !"' >> .bashrc
    echo "exit 0" >> .bashrc
}

scene1() {

    create_user
    create_scene  


    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 16 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
