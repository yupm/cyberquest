create_user() {
    adduser --disabled-password --gecos "" grunt8
    echo "grunt8:{PROTECT_WORLD_PEACE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme8 /home/grunt8/readme
    
    mkdir /etc/grunt8
    cp /shared/dataGrunt8.py /etc/grunt8/grunt8_service.py

    mkdir -p /etc/grunt9/.ssh
    cp /shared/dataGrunt9/ssh/* /etc/grunt9/.ssh
}

scene1() {

    create_user
    create_scene

    sudo python3 /etc/grunt8/grunt8_service.py   

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 8 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
