create_user() {
    adduser --disabled-password --gecos "" grunt13
    echo "grunt13:{WE_WANT_PIKACHU}" | sudo chpasswd
}

create_scene() {
    cp /shared/readmeFiles/readme13 /home/grunt13/readme
}

scene1() {
    #Find out the caesar cipher rotation number, using cipher and plaintext. Then use the rotation against password.txt and run the new cipher against the vignere cipher for the password.

    create_user
    create_scene
    cp /shared/grunt13Image.png /home/grunt13/image.png
    cp /shared/grunt13Cipher.txt /home/grunt13/cipher.txt
    cp /shared/grunt13PlainText.txt /home/grunt13/plaintext.txt
    cp /shared/grunt13Password.txt /home/grunt13/password.txt    

    echo "[$(date +%H:%M:%S)]: Stage 1 Scenario 13 has been setup correctly!"
}

main() {
    scene1
}

main
exit 0
