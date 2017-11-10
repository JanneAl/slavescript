# slavescript

slave script that is supposed to install git and puppet and make the computer slave to your master.

## HOW TO USE

You need to out these commands to terminal:

    wget https://raw.githubusercontent.com/JanneAl/slavescript/master/orjuuttaja.sh

    bash orjuuttaja.sh

After you need to manually go change hosts file as stated here:

    sudoedit /etc/hosts/ 
    
Insert to the file your host name the ip of the master and masters hostname and save changes.

After insert the following:

    sudo service puppet restart
    sudo puppet agent --enable

Finally you need to sign the certificate as master:

    sudo puppet cert --list
    sudo puppet cert --sign
    
 verify cert with the slave:
 
    sudo puppet cert --list
    
 Congratulations you now have a new slave ready to use!


credits:


https://github.com/TatuE


http://terokarvinen.com/2017/aikataulu-palvelinten-hallinta-ict4tn022-3-5-op-uusi-ops-loppusyksy-2017-p5
