create_user() 
    adduser --disabled-password --gecos "" grunt9
    echo "grunt9:{Im_ASH_KETCHUP}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme9 /home/grunt9readme
}

scene1() {
    create_user
    create_scene


    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 9 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
