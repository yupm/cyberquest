create_user() {
    adduser --disabled-password --gecos "" grunt19
    echo "grunt19:{A_SHOCKED_PIKACHU}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme19 /home/grunt19/readme
}

scene1() {
    # Convert the png to txt and base64 decode. Download the video link and reverse it
    create_user
    create_scene

    cp /shared/grunt19Encoded.png /home/grunt19/lookHere.png
    mkdir -p /audio/grunt/
    cp /shared/dataGrunt19.txt /audio/grunt/data.txt
    chown grunt19:grunt19 /audio
    chown grunt19:grunt19 /audio/grunt
    chown grunt19:grunt19 /audio/grunt/data.txt
    chmod 500 /audio/
    chmod 500 /audio/grunt
    chmod 500 /audio/grunt/data.txt

    
    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 19 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
