create_user() {
    adduser --disabled-password --gecos "" grunt14
    echo "grunt14:{GYM_LEADER_ADRIAN}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme14 /home/grunt14/readme
    cp /shared/dataGrunt14.pcap /home/grunt14/convo.pcap
}

scene1() {
    create_user
    create_scene
    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 14 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
