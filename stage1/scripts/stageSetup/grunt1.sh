create_user() {
    adduser --disabled-password --gecos "" grunt1
    echo "grunt1:{MAKE_IT_DOUBLE}" | sudo chpasswd
}

create_scene() {
    cp /shared/readme1 /home/grunt1/readme
}

scene1() {
    # read the file that has a dash and spacing

    create_user
    create_scene
    touch -- "/home/grunt1/-Jessie was here"
    echo "{JESSIE_AND_JAMES}" > "/home/grunt1/-Jessie was here"

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 1 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
